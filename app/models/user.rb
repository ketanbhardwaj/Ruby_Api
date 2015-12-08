class User < ActiveRecord::Base
  
  acts_as_api

  api_accessible :name_only do |template|
    template.add :id
    template.add :name
    template.add :email
    template.add :gender
    template.add :phone
  end
end
