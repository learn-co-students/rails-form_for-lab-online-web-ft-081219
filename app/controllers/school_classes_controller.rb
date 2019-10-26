class SchoolClassesController < ApplicationController
    before_action :find_school_class, only: [:show, :edit, :update]

    def new
        @school_class =SchoolClass.new
    end 

    def create
        @school_class =SchoolClass.create(school_class_params)
        redirect_to school_class_path(@school_class)
    end

    def show
        #taken care of by before action
    end

    def edit
        #taken care of by before action
    end 

    def update
        #find taken care of by before action
        @school_class.update(school_class_params)
        redirect_to school_class_path(@school_class)

    end 

    private

    def find_school_class
        @school_class = SchoolClass.find(params[:id])
    end 

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end 

end