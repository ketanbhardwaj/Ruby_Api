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
    
    def new 
      @new_user = User.create(name: params[:name], email: params.require(:email), gender: params[:gender], phone: params[:phone])
      # @new_user = User.new(id: params[:id], name: params[:name], email: params[:email], gender: params[:gender], phone: params[:phone],
                            # created_at: params[:created_at], updated_at: [:updated_at])
      # render json: @new_user
      
      respond_to do |format|
        # format.xml  { render_for_api :name_only, :xml  => @user }
        # format.json { render_for_api :public, :json => @users, :root => :users }
        format.json { render_for_api :profile, json: @new_user, :root => :user }
        
      end
    end
    
  end
end
