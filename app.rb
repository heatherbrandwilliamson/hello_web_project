require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    return "Hello Heather"
  end

  get '/name' do
    name = params[:name]
    return name
  end

  get '/names' do
    name1 = params[:name1]
    name2 = params[:name2]
    name3 = params[:name3]
    
    return "#{name1}, #{name2}, #{name3}"
  end

  post '/hello' do
  return "hello"
  end 

  post '/sort-names' do 
    names =params[:names]
    # convert a string to an array 
    names = names.split(",")
    # sort names, using sort method 
    sorted_names = names.sort 
    # convert sorted names to a string 
    return sorted_names.join(",")
  end

end


  # This allows the app code to refresh
  # without having to restart the server.
#   post '/POST/Submit' do
#     name = params[:name]
#     message = params[:message]
#     return name, message
#     # This route is not executed (the method doesn't match).
#   end

#   get '/hello?name=Leo' do
#     return name
#     # This route is not executed (the path doesn't match).    
#   end

# get '/' do
#   return "Hello Heather"
# end

#   post '/submit' do
#     name = params[:name]
#     message = params[:message]
#     return "Thanks #{name}, you sent this message: #{message}"
# #     # This route matches too, but will not be executed.
# #     # Only the first one matching (above) is.
#   end

#   get '/posts' do
#     name = params[:name]
#     cohort_name = params[:cohort_name]
#     p name
#     p cohort_name
#     return "hello this is a post!"
#     # This route matches too, but will not be executed.
#     # Only the first one matching (above) is.
#   end



  #get '/posts' do 
  #  return 'A list of posts'
  #end

  #posts '/posts' do
  #end 


# GET / -> exectute some code 

# GET / todo/1 -> execute some different piece of code

# POST /todos -> execute some different piece of code