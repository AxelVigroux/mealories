# Schema.rb
# t.bigint "user_id", null: false
#################################

class Plan < ApplicationRecord
  belongs_to :user
  has_many   :days, dependent: :destroy
  has_many   :recipes, through: :days

  validates :user_id, presence: true
end
