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
  emoticons = YAML.load_library(file_name) 
  emoticons.each do |key, value|
    emoticons.value?(value[1])
    value[1] = key
    #binding.pry
  end
    value[1]
    #go over each key and assign the japanese value to the english name.
    #japanese value == english name
end

def get_english_meaning
  emoticons[:japanese] = emoticons[:english]
  emoticons[:english]# code goes here
end
