require 'rest-client'
require 'json'




def teste()


    api = 'd8dd86fe3d3bb9be9edf5dabc8aac0f1'
    erro = 'awdawsuawhdiud654aw6s84a8wd8455'

    url = "https://api.themoviedb.org/3/movie/392044?api_key=#{api}&language=pt-BR"

    resp = RestClient.get url

    enviar = {
        title: JSON.parse(resp.body)['title'],
        #sinopse: JSON.parse(resp.body)['overview']
    }
    puts enviar

end

def tt() 




    begin
        api = 'd8dd86fe3d3bb9be9edf5dabc8aac0f1'
        erro = 'awdawsuawhdiud654aw6s84a8wd8455'
    
        url = "https://api.themoviedb.org/3/movie/3920446969?api_key=#{api}&language=pt-BR"
    
        resp = RestClient.get url
    
        enviar = {
            title: JSON.parse(resp.body)['title'],
            #sinopse: JSON.parse(resp.body)['overview']
        }
        return enviar
    
       
      # Previne o erro e imprime mensagem de erro
      rescue Exception => ex
        return "erro: " + ex.message
       
      #Garante final da execução do bloco
      ensure
       
       #Coloque algo que tenha certeza da execução
      end
    

end



begin
    apiKey = 'd8dd86fe3d3bb9be9edf5dabc8aac0f1'

    if arg.length > 0 && arg != ' '

        if arg.split[0] == 'objeto'
        arrey = arg.split

        url = "https://api.themoviedb.org/3/movie/#{arrey[1]}?api_key=d8dd86fe3d3bb9be9edf5dabc8aac0f1&language=pt-BR"
        resp = RestClient.get url
        enviar = JSON.parse(resp.body)['title'][0]['overview']
        return (
            "#{JSON.parse(resp.body)['title']}--#{JSON.parse(resp.body)['overview']}--#{JSON.parse(resp.body)['runtime']}--#{JSON.parse(resp.body)['release_date']}--#{JSON.parse(resp.body)['vote_average']}--#{JSON.parse(resp.body)['backdrop_path']}--#{JSON.parse(resp.body)['poster_path']}"
        ) #enviar #+ '<br><strong>somendo um arg</strong>'

        elsif  arg.include?(' ')

        arrey = arg.split
        url = "https://api.themoviedb.org/3/movie/#{arrey[0]}?api_key=#{apiKey}&language=pt-BR"
        resp = RestClient.get url
        enviar = JSON.parse(resp.body)['title']
        return enviar #+ '<br><strong>mais de um arg</strong>'

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
    return "erro: " + ex.message
   
  #Garante final da execução do bloco
ensure
   
   #Coloque algo que tenha certeza da execução
end