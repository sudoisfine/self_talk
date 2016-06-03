require 'sinatra'
require 'pry'
require 'erb'

get '/' do
  erb :form
end

# swap = {
#   'hate' => 'love',
#   'ugly' => 'beautiful',
#   'fat' => 'amazing',
#   'terrible' => 'wonderful',
#   'un-talented' => 'so talented',
#   'untalented' => 'so talented',
#   'worthless' => 'worthy',
#   'pathetic' => 'excellent',
#   'fearful' => 'strong',
#   'afraid' => 'strong',
#   'ashamed' => 'proud',
#   'awful' => 'wonderful',
#   'bad' => 'great',
#   'bitter' => 'content',
#   'boring' => 'interesting',
#   'broken' => 'whole'
# }

# post '/' do
#   affirmation = params[:affirmation]
#     if affirmation.match(/hate/i)
#     affirmation.gsub! 'hate', 'love'
#     elsif affirmation.match(/ugly/i)
#     affirmation.gsub! 'ugly', 'beautiful'
#     elsif affirmation.match(/fat/i)
#     affirmation.gsub! 'fat', 'amazing'
#     else affirmation.match(/terrible/i)
#     affirmation.gsub! 'terrible', 'wonderful'
#     change = "#{affirmation}"
#     erb :change_it, locals: { change: change }
#   end
# end

post '/' do
  affirmation = params[:affirmation]
  affirmations = {hate: "love",
                  ugly: "beautiful",
                  fat: "amazing",
                  terrible: "wonderful"}
  tokens = affirmation.split(" ")
  # binding.pry
  sentence = affirmation
  tokens.each do |token|
    sentence.gsub! token, affirmations[token] if affirmations[token]
  end
  change = "#{sentence}"
  erb :change_it, locals: { change: change } #instead of change, make it the sentence variable
end
