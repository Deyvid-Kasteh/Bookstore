class HomepageController < ApplicationController
  def index
    
    
  end

  def search
    @response = HTTParty.get('https://www.googleapis.com/books/v1/volumes?q='+ params[:busca])
    #JSON.parse response, symbolize_names: true
    #puts response.body, response.code, response.message, 

    puts "111111111111111111111111"
    #puts response.headers.inspect
    puts "222222222222222222222222"

    #@livro = JSON.parse(response.body)
    @livroAzkaban = JSON.parse(@response.body)
    #puts @livroAzkaban
    puts "333333333333333333333333333333"
    #@livroAzkaban

    #render plain: params[@livroAzkaban]


    @deyvid = "kasteh"
    
    

  end

end
