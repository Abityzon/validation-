class PeopleController < ApplicationController
    def new
      @person = Person.new
    end
  
    def create
      @person = Person.new(person_params)
  
      if @person.save
        redirect_to root_path, notice: "Person created successfully!"
      else
        render :new
      end
    end

    def create
        @person = Person.new(person_params)
    
        if @person.favorite_color.in?(%w(red blue green))
          @person.errors.add(:favorite_color, "can't be red, blue, or green")
        end
    
        if @person.save
          redirect_to @person, notice: 'Person was successfully created.'
        else
          render :new
        end
      end
  
    private
  
    def person_params
      params.require(:person).permit(:name)
    end
  end
  