class LogComment < ApplicationRecord
  belongs_to :log
  
  validates :comment, presence: true
end
