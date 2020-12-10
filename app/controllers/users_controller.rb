class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(account_update_params)
            redirect_to root_url
        else
            render 'edit'
        end
  end

  def users
    @users = User.all
  end

  def show
  end
   private

  def account_update_params
    params.require(:user).permit(:name, :avatar, :email, :password, :password_confirmation, :current_password,:address_line, :land_mark, :street, :city,:state, :pincode, :role, :phone_number)
  end

end
