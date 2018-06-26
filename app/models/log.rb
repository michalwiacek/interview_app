class Log < ApplicationRecord
  include AASM

  aasm column: :status do
    state :new, initial: true
    state :closed

    event :close do
      transitions from: :new, to: :closed
    end
  end

  has_many :log_comments

  validates :description, presence: true
  validates :name, uniqueness: true, presence: true
  validates :status, inclusion: { in: %w[new closed] }, presence: true

  # def closed?
  #   return status == "closed"
  # end
end
