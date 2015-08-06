class ItemsController < ApplicationController
  before_action :logged_in_user, only: [:index, :new, :edit, :show]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update!(item_params)
    redirect_to @item
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to action: "index"
  end

  def order
    @items = Item.all
  end

  private
    def item_params
      params.require(:item).permit(:code, :title, :description, :quantity, :safetystock, :reorderlevel, :leadtime)
    end

    def logged_in_user
      unless user_signed_in?
        flash[:danger] = "Please log in"
        redirect_to root_path
      end
    end

end
