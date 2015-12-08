module Api
  class UsersController < ApplicationController
    
    respond_to :json
    
    def show
      # render json: User.all
      # @users = User.find(3)
      # @orders = @users.order
      
      # render json: @orders
      
      @companies = User.includes(:order).all
      
      respond_to do |format|
        # format.xml  { render_for_api :name_only, :xml  => @user }
        # format.json { render_for_api :public, :json => @users, :root => :users }
        format.json { render_for_api :public, json: @companies, :root => :users }
        
      end
    end
    
  end
end
