# what is an API? Application Programming Interface 

# responssible making a call to the api
# convert that data into ruby 
# create ruby objects


# difference between each vs map/collect
# each will return the original array, map will return a new array 

class API


    def self.get_data
        response = RestClient.get('https://swapi.dev/api/people/')
        characters_array = JSON.parse(response)["results"]
        characters_array.each do |character|
            # name, homeworld, films, starships
            binding.pry
            Character.new(character["name"], character["homeworld"], character["films"], character["starships"])
        end 

    end 
    #method dedicated for making a call 

end 