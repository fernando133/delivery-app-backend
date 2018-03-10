class Order < ApplicationRecord
  belongs_to :user, validate: true
  belongs_to :delivery_time, validate: true
end
