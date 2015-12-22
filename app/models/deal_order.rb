class DealOrder < ActiveRecord::Base
  
  acts_as_api
  
  belongs_to :deal
  belongs_to :order
  
  api_accessible :public do |template|
    template.add :deal
    template.add :order
  end
  
end
