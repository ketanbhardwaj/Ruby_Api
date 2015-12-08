class User < ActiveRecord::Base
  
  acts_as_api
  
  has_many :order

  api_accessible :public do |template|
    template.add :id
    template.add :name
    template.add :email
    template.add :gender
    template.add :phone
    template.add :order
  end
end