class ItemsController < ApplicationController

  def index
    @items = Item.all_items_unsold
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.new
    item.seller_id = current_user.id
    item.title = params[:item][:title]
    item.description = params[:item][:description]
    item.condition = params[:item][:condition]
    item.category = params[:item][:category]
    item.price = params[:item][:price]
    item.photo.attach(params[:item][:photo])

    if item.save
        redirect_to root_path
    else
        flash[:alert] = item.errors.full_messages[0]
        redirect_to new_item_path
    end
  end

  def edit
    @item
  end

end
