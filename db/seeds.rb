Cat.destroy_all
Owner.destroy_all

bob = Owner.create(name: "Bob", age: 732)
joe = Owner.create(name: "Joe", age: 3)
stacey = Owner.create(name: "Stacey", age: 44)

Cat.create(breed: "yellow", owner: bob)

Cat.create(breed: "brown", owner: joe)

Cat.create(breed: "green", owner: stacey)
Cat.create(breed: "purple", owner: stacey)
Cat.create(breed: "orange", owner: stacey)

binding.pry