class Address < ActiveRecord::Base
  belongs_to :addressee, polymorphic: true
  has_many :shipments
end
