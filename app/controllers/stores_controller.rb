class StoresController < ApplicationController
  
  #(R)ead
  def index
    # here we grab all stores
    @stores = Store.all
    # render stores
    render component: "stores", props: {stores:@stores}
  end

  def show
    @store = Store.find(params[:id])
    #find store and show it (1 store by id)
    # render store
    render component: "store", props: {store: @store}
  end

  #(C)reate
  def new
    # render new form
    render component: "newStores"
  end

  def create
    # create store(from from UI) to our db
    Store.create(name: params[:store][:name], description: params[:store][:description])
    redirect_to root_path
  end


  def stores_params
    params.require(:store).permit(:name, :description)
  end


 # (U)pdate
  # edit returns the form to store/client
 def edit
  @store = Store.find(params[:id])
  render component: "storeEdit", props: { store: @store }
end

# update takes values from form and updates the record
def update
  @store = Store.find(params[:id])
  if @store.update(stores_params)
    # this will take us to our index method
    redirect_to root_path
  else
    render component: "storeEdit", props: { store: @store }
  end
end

  #(D)elete
  def destroy
    # find car to Delete
    store = Store.find(params[:id])
    # Delete
    store.destroy
    redirect_to root_path
  end



end
