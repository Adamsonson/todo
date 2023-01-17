class Task < ApplicationRecord
  enum state: {
    initial: 0,
    started: 1,
    done: 2
  }

  default_scope { where("deleted_at IS NULL") }
  # scope :active, -> { where("deleted_at IS NULL")}
  scope :deleted, -> { where("deleted_at IS NOT NULL")}
  # scope :due_today, -> { where("due_at < ?")}
end
