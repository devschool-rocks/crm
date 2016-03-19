class Instructor < ActiveRecord::Base
  include Addressable

  has_many :students
end
