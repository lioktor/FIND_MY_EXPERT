class Mission < ApplicationRecord
  belongs_to :user
  belongs_to :expertise

  # after_create :status_pending
  # STATUSES= %w[pending approved]

  # def pending!
  #   update_attribute :status, "pending"
  # end

  # def approved!
  #   update_attribute :status, "approved"
  # end
end
