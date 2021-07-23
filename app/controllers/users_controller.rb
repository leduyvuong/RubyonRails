class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :index]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: :destroy
  before_action :find_u, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.where(activated: true).paginate(page: params[:page])   
  end
  def find_u
    @user = User.find(params[:id])  
    if @user
      return @user
    else
      flash[:danger] = t('static_pages.home.danger')
      return root_url
    end
  end
  def show
    @user = User.find(params[:id])  
    redirect_to root_url and return unless @user.activate == true 
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params) 
    if @user.save
      @user.send_activation_email
      flash[:info] = "Please check your email to activate your account."
      redirect_to root_url
    else
      render "new"
    end
  end
  def edit
  end
  def update
    
    if @user.update(user_params)
      flash[:success] = t('static_pages.home.update_pf')
      redirect_to @user
    else
      render "edit"
    end
  end
  def destroy
    if @user.destroy
      flash[:success] = t('users.index.destroy_S')
      redirect_to users_url
    else
      flash[:danger] = t('users.index.destroy_F')
      redirect_to users_url
    end
  end
  
  private
    def user_params
      params.require(:user).permit(:name, :email, :password,
      :password_confirmation)
    end
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = t('static_pages.home.danger')
        redirect_to login_url
      end
    end
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless @user == current_user
    end
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
