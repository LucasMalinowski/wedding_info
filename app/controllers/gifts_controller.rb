class GiftsController < ApplicationController
  before_action :require_login, except: [:index]
  before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]

  def index
    @gifts = Gift.all
  end

  def show
    @gift = Gift.find(params[:id])
  end
  def new
    @gift = Gift.new
  end

  def create
    @gift = Gift.new(gift_params)

    if @gift.save
      redirect_to gifts_path
    else
      render :new
    end
  end

  def edit
    @gift = Gift.find(params[:id])
  end

  def update
    @gift = Gift.find(params[:id])

    if @gift.update(gift_params)
      redirect_to gifts_path
    else
      render :edit
    end
  end

  def destroy
    @gift = Gift.find(params[:id])
    @gift.destroy

    redirect_to gifts_path
  end

  private

  def gift_params
    params.require(:gift).permit(:name, :link, :image, :price)
  end

  def require_admin
    redirect_to root_path unless current_user.admin?
  end
end