class Student < ActiveRecord::Base 
  attr_accessible :age, :email, :first_name, :last_name

  has_many :exams

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true

  def name
    "#{first_name} #{last_name}"
  end
end
