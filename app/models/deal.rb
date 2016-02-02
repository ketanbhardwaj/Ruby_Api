class Deal < ActiveRecord::Base
  
  acts_as_api
  
  has_many :order
  
  api_accessible :public do |template|
    template.add :id
    template.add :deal_price
    template.add :deal_name
    template.add :deal_location
    template.add :created_at
    template.add :updated_at
  end
  
end
