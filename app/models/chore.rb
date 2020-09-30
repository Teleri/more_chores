class Chore < ApplicationRecord
  belongs_to :user
  validates :title, :room, :priority, presence: true
  validates :room, inclusion: {
    in: ['kitchen', 'bedroom', 'living room', 'office', 'hallway', 'playroom']
  }
  validates :priority, numericality: { only_integer: true }
  validates :priority, inclusion: { in: [1, 2, 3, 4, 5] }
end
