class Dog < ActiveRecord::Base 
    has_many :walks
    has_many :dog_walkers, through: :walks

def take_walk(length, dog_walker)
    self.walks.where(length_in_minutes: length, dog_walker_id: dog_walker)
end

def self.good_dogs
    self.all.where(good_dogs: true)
end


end

=begin

- `Dog#take_walk(length_in_minutes, dog_walker)`
  - takes a `dog_walker` (an instance of the `DogWalker` class) and an `length_in_minutes` (integer) as arguments, and creates a new `Walk` instance associated with this dog and the given dog walker
- `Dog#print_walk_details`
  - should `puts` to the terminal a string for each of the dog's walks
  - each string should be formatted like this: `{dog walker name} walked {dog name} for {length} minutes`
- `Dog.good_dogs`
  - returns an array of all dog instances whose are good dogs

=end