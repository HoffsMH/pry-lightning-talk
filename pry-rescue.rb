require 'pry'
require 'pry-rescue'
require 'pry-stack_explorer'
arr = [10, 87,89,0,25]

output = arr.map do |element1|
  arr.map do |element2|
    if element1 % element2 == 0
      "wow!"
    else
      element1 / element2
    end
  end

end
