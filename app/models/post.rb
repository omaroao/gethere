class Post < ActiveRecord::Base
  belongs_to :user
  validates_formatting_of :phone_number, using: :us_phone
end
