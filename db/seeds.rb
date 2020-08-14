# create seed data here
Dog.destroy_all
DogWalker.destroy_all
Walk.destroy_all


puts "Done 🌱"
100.times do
    Dog.create(
        name: Faker::Creature::Dog.name, 
        breed: Faker::Creature::Dog.breed,
        good_dog: rand(0..1) == 1
    )

    DogWalker.create(
        name: Faker::Name.first_name,
        favorite_breed: Faker::Creature::Dog.breed,
    )

  
end

1000.times do
    Walk.create(
        length_in_minutes: rand(0..90),
        dog_id: Dog.all.sample.id,
        dog_walker_id: DogWalker.all.sample.id
    )
end
