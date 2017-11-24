require 'pry'

def begins_with_r(array)
  array.each do |word|
    if word[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  newArray = []
  array.each do |word|
    if word.include?("a")
      newArray.push(word)
    end
  end
  newArray
end

def first_wa(array)
  array.each do |word|
    if word[0] == "w"
      if word[1] == "a"
        return word
      end
    end
  end
end

def remove_non_strings(array)
  newArray = []
  array.each do |element|
    if element.class == String
      newArray.push(element)
    end
  end
  newArray
end

# def count_elements(array)
#   newArray = []
#   array.each do |obj|
#     newArray.push(obj)
#       #if newArray.length > 0
#         newArray.each do |obj|
#           if obj.include?(:count)
#             obj[:count] += 1
#           else
#             obj[:count] = 1
#           end
#           binding.pry
#         end
#       #end
#   end
#   newArray.uniq
# end

def count_elements(array)
  newArray = []
  array.each do |obj|
    newArray.push(obj)
    obj[:count] = 0
      #if newArray.length > 0
        newArray.each do |obj|
          if obj.include?(:count)
            obj[:count] += 1
          else
            obj[:count] = 1
          end
          #binding.pry
        end
      #end
  end
  newArray.shift
  return newArray
end

def merge_data(keys, data)
array = []
keys.each do |key|
  data.each_with_index do |info, i|
    #binding.pry
    array.push(key.merge(info[key[:first_name]]))
    end
  end
  array
end

def find_cool(array)
  array.each do |element|
    if element.value == "cool"
      return element
end