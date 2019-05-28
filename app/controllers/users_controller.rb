# class UsersController < ApplicationController
#   skip_before_action :authenticate_user!

#   def index
#     @users = User.all
#   end

#   def new
#     @user = User.new
#   end

#   def create
#     @user = User.new(user_params)
#     @user.save
#   end

#   def edit
#   end

#   def update
#     @user = User.find(params[:id])
#     @user.update(user_params)
#     redirect_to user_path(@user)
#   end

#   def show
#   end

#   def destroy
#     @user = User.find(params[:id])
#     @user.destroy
#     redirect_to users_path
#   end

#   private
#   def user_params
#     params.require(:user).permit(:first_name, :last_name, :type)
#   end
# end
