module Api
  class UsersController < ApplicationController
    
    respond_to :json
    require "rubygems"
    require "json"
    
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
    
    def new 
      @no = JSON.parse('{ "failure": "Paramter missing" }')
      begin
        @new_user = User.create(name: params[:name], email: params.require(:email), gender: params[:gender], phone: params[:phone])
        
        respond_to do |format|
          format.json { render_for_api :profile, json: @new_user, :root => :user }
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
