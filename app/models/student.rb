class Student < ActiveRecord::Base
  include Addressable

  belongs_to :instructor
  belongs_to :gender
  belongs_to :shirt_size, class_name: 'Size', foreign_key: :size_id
end
