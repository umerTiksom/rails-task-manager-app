class Task < ApplicationRecord
  validates :priority, presence: true, inclusion: {in: %w(low medium high) }
end
