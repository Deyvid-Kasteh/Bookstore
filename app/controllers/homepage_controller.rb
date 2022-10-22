class HomepageController < ApplicationController
  before_action :set_busca, only: :search
  def index
  end

  def search

    bbusca = @busca_de_livros.general
    puts @texto
  end

  private
  def set_busca
    @texto = params[:busca]
    @busca_de_livros = Buscalivros.new(@texto)
    
  end
end
