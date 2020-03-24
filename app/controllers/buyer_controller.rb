class BuyerController < ApplicationController
    require 'payjp'
    before_action :correct_user,only: :veri
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
      @product = Product.find(params[:id])
      if @product.seller_id == current_user.id
        redirect_to  root_path
      else
        card = Card.where(user_id: current_user.id).first
        Payjp.api_key = Rails.application.credentials[:payjp][:PAYJP_PRIVATE_KEY]
        Payjp::Charge.create(
        amount: @product.price, 
        customer:  card.customer_id, 
        currency: 'jpy', 
        )
        redirect_to action: 'done' 
      end
    end
      def  done
        @product_buyer= Product.find(params[:id])
        @product_buyer.update( buyer_id: current_user.id)
      end
  private
    def correct_user
      if @product = current_user.products.find_by(id: params[:id])
        redirect_to root_path
      end
    end 
end
