class HomepageController < ApplicationController
  def index
  end

  def search
    response = HTTParty.get('https://www.googleapis.com/books/v1/volumes?q='+ params[:busca])

    puts response.body, response.code, response.message, response.headers.inspect

    @livro = response.body


  end
end
