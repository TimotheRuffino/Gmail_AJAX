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
    end

  
end
