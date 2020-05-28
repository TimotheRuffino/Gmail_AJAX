class EmailsController < ApplicationController

    def index 
      @emails = Email.all
    end
  
    def new
      @emails = Email.new
    end
  
    def create
      @email = Email.create!(object:  Faker::DcComics.title,
      body: Faker::Lorem.sentence(word_count: 10))
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { }
      end
    end

    def show 
     
      @email = Email.find(params[:id])
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { }
      end
    end
  
    def destroy
      @email = Email.find(params[:id])
      @email.destroy
  
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { }
      end
    end
end
