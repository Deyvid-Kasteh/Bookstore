class HomepageController < ApplicationController
  require_relative '../service/buscalivros'

  def index
  end

  def search
    @nomeDoElemento = params[:busca]
    @numeroDaPagina = 0
    @numeroDeElementos = 40
    @response = Googles.new(@nomeDoElemento, @numeroDaPagina, @numeroDeElementos)
    puts @response
    @response2 = @response.inicio
    puts @response2
    @livroAzkaban = JSON.parse(@response2.body)
  end


    
end
