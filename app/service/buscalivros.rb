class Buscalivros
      include HTTParty
      base_uri "https://www.googleapis.com/books/v1/volumes?q="


      def initialize
        @options = {}
      end


      def general
        self.class.get(@testo)        
      end
end