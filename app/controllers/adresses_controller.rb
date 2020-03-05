class AdressesController < ApplicationController
    private
    def adress_params
      params.require(:adress).permit(:zip_code,:prefecture,:city,:street_num,:building).merge(user_id: current_user.id)
    end
end
