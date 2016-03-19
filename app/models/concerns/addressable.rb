module Addressable
  def self.included(klass)
    klass.has_one :address, as: :addressee
    klass.has_many :shipments, as: :addressee
  end
end
