class Product < ApplicationRecord
  belongs_to :category
  
  attachment :photo
end
