class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review= @product.reviews.new({product_id: params[:product_id], user_id: session[:user_id], description: params[:review]["description"], rating: 1})
      # params[:review]["rating"])
    if @review.save
      redirect_to [:products]
    else
      redirect_to [:products]
    end

end

#     @category= Category.new(category_params)

# if @category.save
#   redirect_to [:admin, :categories], notice: 'Category created!'
# else
#   render :new
# end

end