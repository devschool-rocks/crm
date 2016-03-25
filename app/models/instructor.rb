class Instructor < ActiveRecord::Base
  include Addressable

  has_many :students

  def name
    "#{first_name} #{last_name}"
  end
end
