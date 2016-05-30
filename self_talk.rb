def affirmation
  puts "Type your negative self-talk here:"
  affirmation = gets.chomp
  if affirmation.match(/hate/i)
  affirmation.gsub! 'hate', 'love'
  elsif affirmation.match(/ugly/i)
  affirmation.gsub! 'ugly', 'beautiful'
  elsif affirmation.match(/fat/i)
  affirmation.gsub! 'fat', 'amazing'
  else affirmation.match(/terrible/i)
  affirmation.gsub! 'terrible', 'wonderful'
  end
end

affirmation