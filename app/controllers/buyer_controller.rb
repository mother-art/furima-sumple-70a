class BuyerController < ApplicationController
    require 'payjp'
  
    def veri
      @product = Product.find(params[:id])
      card = Card.where(user_id: current_user.id).first
      if card.blank?
        redirect_to controller: "card", action: "new"
      else
        Payjp.api_key = Rails.application.credentials[:payjp][:PAYJP_PRIVATE_KEY]
        customer = Payjp::Customer.retrieve(card.customer_id)
        @default_card_information = customer.cards.retrieve(card.card_id)
      end
    end
  
    def pay
      card = Card.where(user_id: current_user.id).first
      Payjp.api_key = Rails.application.credentials[:payjp][:PAYJP_PRIVATE_KEY]
      Payjp::Charge.create(
      amount: 13500, 
      customer:  card.customer_id, 
      currency: 'jpy', 
    )
    redirect_to action: 'done' 
    end

    def  done
      @product_buyer= Product.find(params[:id])
      @product_buyer.update( buyer_id: current_user.id)
     end
  end
