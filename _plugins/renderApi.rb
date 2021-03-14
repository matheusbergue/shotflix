require 'rest-client'
require 'json'





module Jekyll
    class RenderTimeTag < Liquid::Tag
      
        
  
      def initialize(tag_name, markup, tokens)
        super
        @id = markup
      end
  
      def render(context)
        
        return tmdbApi(context[@markup])
      end

      def tmdbApi(arg)
        begin
          apiKey = 'd8dd86fe3d3bb9be9edf5dabc8aac0f1'
      
          if arg.length > 0 && arg != ' '
      
              if arg.split[0] == 'objeto'
                arrey = arg.split
        
                url = "https://api.themoviedb.org/3/movie/#{arrey[1]}?api_key=d8dd86fe3d3bb9be9edf5dabc8aac0f1&language=pt-BR"
                resp = RestClient.get url
                enviar = JSON.parse(resp.body)['title'][0]['overview']
                return (
                    "#{JSON.parse(resp.body)['title']}--#{JSON.parse(resp.body)['overview']}--#{JSON.parse(resp.body)['tagline']}--#{JSON.parse(resp.body)['runtime']}--#{JSON.parse(resp.body)['release_date']}--#{JSON.parse(resp.body)['vote_average']}--#{JSON.parse(resp.body)['backdrop_path']}--#{JSON.parse(resp.body)['poster_path']}--#{JSON.parse(resp.body)['genres']}"
                )
      
             elsif  arg.include?(' ')
      
                arrey = arg.split
                url = "https://api.themoviedb.org/3/movie/#{arrey[0]}?api_key=#{apiKey}&language=pt-BR"
                resp = RestClient.get url
                enviar = JSON.parse(resp.body)[arrey[1]]
                return enviar
      
              else
                url = "https://api.themoviedb.org/3/movie/#{arg}?api_key=#{apiKey}&language=pt-BR"
                resp = RestClient.get url
                enviar = JSON.parse(resp.body)
                return enviar
              end
      
          else
              return 'Variavel vazia'
          end
      
         
        # Previne o erro e imprime mensagem de erro
        rescue Exception => ex
          return "ERRO-API"
         
        #Garante final da execução do bloco
        ensure
         
         #Coloque algo que tenha certeza da execução
        end

      end

    end
end

  
Liquid::Template.register_tag("filmeAPI", Jekyll::RenderTimeTag)