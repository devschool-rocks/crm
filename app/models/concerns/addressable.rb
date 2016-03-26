module Addressable
  def self.included(klass)
    klass.has_one :address, as: :addressee
    klass.has_many :shipments, as: :addressee

    klass.accepts_nested_attributes_for :address
  end
end
