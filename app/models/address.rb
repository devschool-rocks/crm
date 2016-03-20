class Address < ActiveRecord::Base
  belongs_to :addressee, polymorphic: true
  has_many :shipments

  def to_s
    "#{street_1}\r#{street_2}\r#{city}, #{state}, #{postal_code} #{country}"
  end
end
