class Goal < ApplicationRecord
  belongs_to :user
  has_many :todos, -> { order("done ASC, positio ASC").includes(:goal) }, dependent: :destroy
  validates :title, presence: true
end
