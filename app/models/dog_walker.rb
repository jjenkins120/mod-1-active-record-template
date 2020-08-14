class DogWalker < ActiveRecord::Base 
    has_many :walks
    has_many :dogs, through: :walks
end



=begin

- `DogWalker#walks`
  - returns an array of all the walks given by the DogWalker
- `DogWalker#dogs`
  - returns a **unique** array of all the dogs who been walked by the DogWalker

- `DogWalker#give_walk(length_in_minutes, dog)`
  - takes a `dog` (an instance of the `Dog` class) and an `length_in_minutes` (integer) as arguments, and creates a new `Walk` instance associated with this dog walker and the given dog
- `DogWalker#length_of_all_walks`
  - returns an integer for the total length of all walks this dog walker has given
- `DogWalker.most_walks`
  - should return an instance of `DogWalker` which has given the most walks
  
=end