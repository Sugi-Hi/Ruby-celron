class Student
  def set_student(name)
    @name = name
  end

  def introduce
    puts "私の名前は#{@name}です。"
  end
end

student = Student.new
student.set_student("田中哲郎")
student.introduce