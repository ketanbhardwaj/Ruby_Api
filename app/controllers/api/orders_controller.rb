module Api
  class OrdersController < ApplicationController
    
    respond_to :json
    
    def show
      render json: Order.all
      # respond_to do |format|
        # format.json { render json: Order.all}
      # end
    end
    
  end
end