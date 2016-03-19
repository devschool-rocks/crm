class LineItem < ActiveRecord::Base
  belongs_to :shipment
  belongs_to :item, polymorphic: true
end
