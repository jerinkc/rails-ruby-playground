class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course

  scope :passed, -> { where('grade > ?', 70) }
end
