class Order < ActiveRecord::Base
  
  acts_as_api
  
  belongs_to :user

  api_accessible :public do |template|
    template.add :id
    template.add :price
  end
  
end
