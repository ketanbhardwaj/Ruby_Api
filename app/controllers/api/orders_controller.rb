module Api
  class OrdersController < ApplicationController
    
    respond_to :json
    
    def show
      @no = JSON.parse(GlobalConstants::INVALID_PARAMETER)
      begin
        @companies = Order.all
        respond_to do |format|
          format.json { render_for_api :public, json: @companies, :root => :orders }
        end
        
      rescue ActiveRecord::RecordNotFound
        render json: @no
      end
    end
  end
end