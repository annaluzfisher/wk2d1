class Bootcamp
  def initialize(name,slogan,student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new{|hash,k| hash[k] = [] }
  end

  def name
    @name
  end

  def slogan
    @slogan
  end

  def student_capacity
    @student_capacity
  end  

  def students
    @students
  end

  def teachers
    @teachers
  end

  def hire(new)
    @teachers << new
  end
  
  def enroll(newkid)
   if  @students.length < @student_capacity 
     students << newkid 
     return true
  else
    return false
  end
  end

  def enrolled?(stud)
    @students.include?(stud)
  end

  def student_to_teacher_ratio
    students.length / teachers.length
  end

  def add_grade(student,grade)
    if enrolled?(student)
    @grades[student] << grade
    return true
    else
        return false
    end
  end

  def num_grades(student)
    @grades[student].length
  end

  def average_grade(student)
    return nil if !enrolled?(student) || @grades[student] == []
    @grades[student].sum / @grades[student].length
  end

end 
