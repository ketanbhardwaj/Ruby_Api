module Api
  class DealOrderController < ApplicationController
    
    respond_to :json
    require "rubygems"
    require "json"
    
    def show
      # render json: Deal.all
      
      @no = JSON.parse(GlobalConstants::INVALID_PARAMETER)
      
      begin
        # @companies = User.includes(:deal).find(params[:id])
        @companies = DealOrder.find(params[:id])
        respond_to do |format|
          # format.xml  { render_for_api :name_only, :xml  => @user }
          # format.json { render_for_api :public, :json => @users, :root => :users }
          format.json { render_for_api :public, json: @companies, :root => :dealOrder }
          
        end
        
      rescue ActiveRecord::RecordNotFound
        render json: @no
      end
      
    end
    
  end
end
