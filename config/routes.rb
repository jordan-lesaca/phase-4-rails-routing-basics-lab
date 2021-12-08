Rails.application.routes.draw do
  get 'students', to: 'students#index' #1. generates a GET request to /students
  get 'students/grades', to: 'students#grades' #4 generate a GET request to /students/grades
  get '/students/highest-grade', to: 'students#highest_grade' #5 generates a GET request to students/highest_grade
  
end

#2 Generate a StudentsController with an index action for handling the route; 
#2 Run: rails g controller Students --no-test-framework
#2 Go to newly created file students_controller