class Buscalivros
      include HTTParty
      base_uri "https://www.googleapis.com/books/v1/volumes?"

      def initialize(btexto)
        @options = { query: btexto }
      end

      def general
        self.class.get("q=", btexto)        
      end
end