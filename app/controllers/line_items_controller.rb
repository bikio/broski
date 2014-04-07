class LineItemsController < PublicController

def create
  @product = Product.find(params[:product_id])
  @order = Order.find(session[:order_id])
  line_item = @order.line_items.build
  line_item.copy_product_attributes(@product)
  line_item.save
  redirect_to

end


  #make a create action
  #find the product by params product_id
  #find the order.find by  session order_id...
  #appends line item to order   order.line_items.build
  #create a new line item
  #copy appropriate fields from product to line item
  #save line_item
  #redirect user to checkout page



end
