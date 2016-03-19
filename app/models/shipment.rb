class Shipment < ActiveRecord::Base
  belongs_to :addressee, polymorphic: true
  has_many :line_items
end
