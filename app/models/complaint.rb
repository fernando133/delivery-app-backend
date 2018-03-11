class Complaint < ApplicationRecord
  belongs_to :user, validate: true
end
