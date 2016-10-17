class ReviewsController < ApplicationController

  before_filter :current_user

 def create
   @product = Product.find params[:product_id]
   @review = @product.reviews.new(review_params)
   if @review.save
     redirect_to :back
   else
     redirect_to :back
   end
 end

 def review_params
   new_params = params.require(:review).permit(:rating, :description, :product_id)
   new_params[:user_id] = current_user.id
   return new_params
 end

 def destroy
    @review = Review.find params[:id]
    @review.destroy
    redirect_to :back
  end

end
