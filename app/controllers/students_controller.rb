class StudentsController < ApplicationController
    before_action :find_student, only: [:show, :edit, :update]

    def new
        @student =Student.new
    end 

    def create
        @student =Student.create(student_params)
        redirect_to student_path(@student)
    end

    def show
        #taken care of by before action
    end

    def edit
        #taken care of by before action
    end 

    def update
        #find taken care of by before action
        @student.update(student_params)
        redirect_to student_path(@student)

    end 

    private

    def find_student
        @student = Student.find(params[:id])
    end 

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end 

end