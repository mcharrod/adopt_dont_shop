form1 = AdoptionForm.find_or_create_by!(first_name: "Miranda",
                                        last_name: "Bailey",
                                        street_address: "15000 Centennial Drive",
                                        city: "Seattle",
                                        state: "Washington",
                                        zip_code: "98109",
                                        description: "A large complex with friendly residents desiring a fuzzy friend")

rainbow = Shelter.find_or_create_by!(name: "Rainbow paws",
                                    foster_program: true,
                                    city: "Denver",
                                    rank: 5)

spike = rainbow.pets.find_or_create_by!(name: "Spike",
                                        age: 5,
                                        breed: "Pitbull-Lab",
                                        adoptable: true
                              )

spot = rainbow.pets.find_or_create_by!(name: "Spot",
                                      age: 4,
                                      breed: "Dalmation",
                                      adoptable: true
                              )


dixie = rainbow.pets.find_or_create_by!(name: "Windixie",
                                        age: 6,
                                        breed: "Chihuahua",
                                        adoptable: true
                              )

charlie = rainbow.pets.find_or_create_by!(name: "Charlie",
                                        age: 7,
                                        breed: "Hounddog",
                                        adoptable: true
                              )
