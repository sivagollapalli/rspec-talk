module ExamsHelper
  def remarks(exam)
    if exam.total >= 240
      "Excellent"
    elsif exam.total >= 210 and exam.total < 240
      "Good"
    elsif exam.total >= 180 and exam.total < 210
      "Average"
    elsif exam.total < 180
      "Below Average"
    end
  end
end
