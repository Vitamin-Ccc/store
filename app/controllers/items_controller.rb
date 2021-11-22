class ItemsController < ApplicationController
  before_action :set_store
  before_action :set_item, only: [:show, :update, :destroy, :edit]

  def index
    render component: "Items", props: { store: @store, items: @store.items }
  end

  def show
    render component: "Item", props: { item: @item }
  end

  def new
    render component: "newItem", props: { store: @store }
  end

  def create
    @item = @store.items.new(item_params)
    if (@item.save)
      redirect_to [@store, @item]
    else
    end
  end

  def edit
    render component: "itemEdit", props: { store: @store, item: @item }
  end

  def update
    if (@item.update(item_params))
      redirect_to [@store, @item]
    else
    end
  end

  def destroy
    @item.destroy
    redirect_to store_items_path(@store)
  end

  private

  def item_params
    params.require(:item).permit(:name, :price)
  end

  def set_store
    @store = Store.find(params[:store_id])
  end

  def set_item
    @item = @store.items.find(params[:id])
  end



end
