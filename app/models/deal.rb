class Deal < ActiveRecord::Base
  belongs_to :lead
  belongs_to :student
end
