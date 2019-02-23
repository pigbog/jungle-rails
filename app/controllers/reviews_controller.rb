class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review= @product.reviews.new({product_id: 23, user_id: 1, description: 'hi there', rating: 1})
      # params[:review]["rating"])
    if @review.save
      redirect_to [:products]
    else
      redirect_to [:product]
    end

end

#     @category= Category.new(category_params)

# if @category.save
#   redirect_to [:admin, :categories], notice: 'Category created!'
# else
#   render :new
# end

end