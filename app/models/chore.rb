class Chore < ApplicationRecord
  belongs_to :user
  validates :title, :category, :priority, presence: true
  validates :priorty, numericality: { only_integer: true }
end
