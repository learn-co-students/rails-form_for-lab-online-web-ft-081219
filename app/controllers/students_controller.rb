class StudentsController < ApplicationController
    def index 
    end 

    def show
        @student = Student.find(params[:id])
    end

    def new 
     @student = Student.new
    end

    def create 
        new_student = Student.create(params_form)
        redirect_to student_path(new_student)
    end

    def edit 
        @student = Student.find(params[:id])
    end

    def update 
        @student = Student.find(params[:id])
        @student.update(params_form)
        redirect_to student_path(@student)
    end

    private 
    def params_form 
        params.require(:student).permit(:first_name,:last_name)
    end
end
