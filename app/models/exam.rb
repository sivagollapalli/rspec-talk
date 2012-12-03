class Exam < ActiveRecord::Base
  attr_accessible :chemistry, :maths, :physics, :student_id

  belongs_to :student

  validates :chemistry, :maths, :physics, :student_id, presence: true

  after_validation :calculate_total

  scope :top_performances, where('total > ?', 240)

  def calculate_total
    update_attribute(:total, maths + chemistry + physics)
  end
end
