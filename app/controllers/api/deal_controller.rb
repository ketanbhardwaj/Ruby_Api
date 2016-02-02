module Api
  class DealController < ApplicationController
    
    respond_to :json
    require "rubygems"
    require "json"
    
    def show
      # render json: Deal.all
      
      @no = JSON.parse(GlobalConstants::INVALID_PARAMETER)
      
      begin
        # @companies = User.includes(:deal).find(params[:id])
        @companies = Deal.all
        respond_to do |format|
          # format.xml  { render_for_api :name_only, :xml  => @user }
          # format.json { render_for_api :public, :json => @users, :root => :users }
          format.json { render_for_api :public, json: @companies, :root => :deals }
          
        end
        
      rescue ActiveRecord::RecordNotFound
        render json: @no
      end
      
    end
    
    def new 
      @no = JSON.parse(GlobalConstants::PARAMETER_MISSING)
      # @chak = User.new(user_params)
      # if @chak.save
        # render json: User.all
      # else
        # render json: Order.all
      # end
      
      begin
        @new_user = Deal.create(deal_name: params.require(:deal_name), deal_price: params.require(:deal_price), deal_location: params.require(:deal_location))
        
        respond_to do |format|
          format.json { render_for_api :public, json: @new_user, :root => :deal }
        end
        
      rescue ActionController::ParameterMissing
        render json: @no
        # respond_to do |format|
          # format.json { render_for_api :all, json: @no, :root => :failure }
        # end
      end
      
    end
    
    
  end
end
