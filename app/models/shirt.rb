class Shirt < ActiveRecord::Base
  belongs_to :gender
  belongs_to :size
end
