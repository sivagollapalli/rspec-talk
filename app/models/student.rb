class Student < User 

  has_many :exams

  def name
    "#{first_name} #{last_name}"
  end
end
