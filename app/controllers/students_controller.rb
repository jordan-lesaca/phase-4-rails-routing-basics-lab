class StudentsController < ApplicationController
   
    def index #3 In the index action, return JSON data representing a list of all students
        students = Student.all
        render json: students
    end

    def grades #4 Add a grades action in the StudentsController for handling that route
        students = Student.order(grade: :desc) #4 In the grades action, return JSON data representing a list of all students, ordered by grade from highest to lowest. 
        render json: students
      end

    def highest_grade #5 Add a highest_grade action in the StudentsController for handling this route
        student = Student.order(grade: :desc).first #5 Return JSON data representing the one student with the highest grade. This should return just one student object, unlike the other two, which returned arrays. 
        render json: student
    end


end
