class Lead < ActiveRecord::Base
  has_one :deal
  has_one :interview_request
  has_one :enrollment_invite
end
