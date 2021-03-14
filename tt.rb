require 'rest-client'
require 'json'


url = "https://api.themoviedb.org/3/movie/1729?api_key=d8dd86fe3d3bb9be9edf5dabc8aac0f1&language=pt-BR"

resp = RestClient.get url

tt = JSON.parse(resp.body)


str = 'matheus'

vetor = str.split

puts vetor