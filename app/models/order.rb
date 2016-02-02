class Order < ActiveRecord::Base
  
  acts_as_api
  
  belongs_to :user
  has_many :deal

  api_accessible :public do |template|
    template.add :id
    template.add :price
    template.add :user_id
    template.add :created_at
    template.add :updated_at
  end
  
end
