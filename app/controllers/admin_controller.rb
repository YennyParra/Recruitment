class AdminController < ApplicationController
before_action :set_user, only: [:update,:destroy]
before_action :authenticate_user!
before_action :authorize_admin!

  def index
    @user = User.all
    @user = User.new
  end

def create
  @user = User.new(user_params)
  if @user.save
    redirect_to admin-index_path, notice: 'User Created'
  else
    redirect_to admin_index_path, alert: 'Unable to crate user '
  end
end
def update
  if @user.update(user_params)
    redirect_to admin_index_path, notice: 'User update'
  else
    redirect_to admin_index_path, alert: 'Unable to update user'  
  end
end
def destroy
  @user.destroy(user_params)

  respond_to dp |format|
  format.html { redirect_to posts_utl, notice: "User was successfully destoyed."}
  format.json { head :no_content}
  end
end
  private
  def authorize_admin!
    redirect_to root_path, alert:'Acces Denied' unless current_user.admin?
  end

  def user_params
    params.require(:user).permit(:name, :email, :password_confirmation, :rol)
  end

def set_user
  @user = User.find(params[:id])
  end
end
