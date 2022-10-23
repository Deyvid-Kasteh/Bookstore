class HomepageController < ApplicationController
  def index
    
    
  end

  def search
    response = HTTParty.get('https://www.googleapis.com/books/v1/volumes?q='+ params[:busca])
    #JSON.parse response, symbolize_names: true
    #puts response.body, response.code, response.message, response.headers.inspect

    @livro = JSON.parse(response.body)
    @livroAzkaban = @livro['items']
    puts @livroAzkaban

    @livroAzkaban
    
    

  end

end
