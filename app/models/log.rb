class Log < ApplicationRecord
  has_many :log_comments

  def closed?
    return status == "closed"
  end
end
