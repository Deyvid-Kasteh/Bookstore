class Googles
    include HTTParty
    base_uri 'https://www.googleapis.com/books/v1/volumes?'

    def initialize (nomeDoElemento, numeroDaPagina, numeroDeElementos)
      @options = { query: { q: nomeDoElemento, startIndex: numeroDaPagina, maxResults: numeroDeElementos} }
    end

    def inicio
      self.class.get('/', @options)
    end
  end