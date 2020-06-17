require 'pry'
require 'yaml' # require modules here

def load_library(file_name)
emoticons = YAML.load_file(file_name)
new_hash = {}
#binding.pry # require modules here
emoticons.each do |key, value|
  new_hash[key] = {
    :english => value[0],
    :japanese => value[1]
  }
end
  new_hash
end

def get_japanese_emoticon(file_name, emoticon)
  emoticons = load_library(file_name)
  emoticons.each do |key, value|
    emoticons.value?(value[:japanese])
    #binding.pry
    value[:japanese] = key
    #binding.pry
  end
    value[:japanese]
    #go over each key and assign the japanese value to the english name.
    #japanese value == english name
end

def get_english_meaning(file_name, emoticon)
  emoticons = load_library(file_name)
  emoticons.each do |key, value|
    emoticons.value?(value[:japanese])
    binding.pry
    value[:japanese] = key
    #binding.pry
  end
    value[:japanese]
end
