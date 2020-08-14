class Walk < ActiveRecord::Base 
    belongs_to :dog
    belongs_to :dog_walker
end


=begin

- `Walk#dog`
  - should return the `Dog` instance for this Walk.
- `Walk#dog_walker`
  - should return the `DogWalker` instance for this Walk.

- `Walk#happy_walker?`
  - should return true if the favorite_breed of the dog walker for this walk matches the breed of the dog for this walk, and false if it doesn't match
- `Walk#print_details`
  - should `puts` to the terminal a string representing this walk
  - the string should be formatted like this: `{dog walker name} walked {dog name} for {length} minutes`

=end