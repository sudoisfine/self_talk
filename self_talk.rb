require 'sinatra'
require 'pry'
require 'erb'

get '/' do
  erb :form
end

post '/' do
  affirmation = params[:affirmation]
    if affirmation.match(/hate/i)
    affirmation.gsub! 'hate', 'love'
    elsif affirmation.match(/ugly/i)
    affirmation.gsub! 'ugly', 'beautiful'
    elsif affirmation.match(/fat/i)
    affirmation.gsub! 'fat', 'amazing'
    else affirmation.match(/terrible/i)
    affirmation.gsub! 'terrible', 'wonderful'
    change = "#{affirmation}"
    erb :change_it, locals: { change: change }
  end
end
