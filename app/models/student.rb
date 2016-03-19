class Student < ActiveRecord::Base
  include Addressable

  belongs_to :instructor
end
