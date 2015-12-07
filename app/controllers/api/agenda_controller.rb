module Api
  class AgendaController < ApplicationController
    
    respond_to :json
    
    def all
      render json: Person.all
    end
    
    def default_serializer_options
      {root: false}
    end
    
    def single
      render json: Person.find(params[:id])
    end
    
    def new
      render json: Person.new
    end
    
  end
end 