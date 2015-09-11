class UsersController < ApplicationController
 
  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)

    if @user.save
      # render success in Jbuilder
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end

  def update
    @user = User.find_by_id(params[:id])

    if @user.nil?
      render json: { message: "Cannot find post" }, status: :not_found
    else
      @user.update(user_params)
    end
  end

  def show
    @user = User.find_by_id(params[:id])

    if @user.nil?
      render json: { message: "Cannot find user" }, status: :not_found
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])

    if @user.nil?
      render json: { message: "Cannot find user" }, status: :not_found
    else
      if @user.destroy
        render json: { message: "Successfully deleted" }, status: :no_content
      else
        render json: { message: "Unsuccessfully deleted" }, status: :bad_request 
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
