class UsersController < ApplicationController

    
  private
    def user_params
      params.require(:user).permit(:nickname,:name,:name_kana,:sex,:tel,:email,:password).merge(user_id: current_user.id)
    end

end
