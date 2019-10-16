class SchoolClassesController < ApplicationController
    def index 
    end 

    def new 
        @school_class  = SchoolClass.new
    end

    def create 
        
        new_school_class = SchoolClass.create(params_form)
        redirect_to school_class_path(new_school_class)
    end

    def show 
        @school_class = SchoolClass.find(params[:id])
    end
    def edit 
        @school_class = SchoolClass.find(params[:id])
    end

    def update 
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(params_form)
        redirect_to school_class_path(@school_class)
     
    end

    private 
    def params_form 
        params.require(:school_class).permit(:room_number, :title)
    end
    
end
