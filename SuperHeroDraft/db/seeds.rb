# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

id = 629
102.times do
  heroHash = RestClient.get("http://superheroapi.com/api/10117199249842334/#{id}")
  id += 1

  hero = JSON.parse(heroHash)



  Hero.create(
    :name => hero['name'],
    :intelligence =>  hero['powerstats']['intelligence'].to_i,
    :strength =>  hero['powerstats']['strength'].to_i,
    :speed =>  hero['powerstats']['speed'].to_i,
    :durability => hero['powerstats']['durability'].to_i,
    :power => hero['powerstats']['power'].to_i,
    :combat => hero['powerstats']['combat'].to_i,

    :full_name => hero['biography']['full-name'],
    :birth_place => hero['biography']['place-of-birth'],

    :gender => hero['appearance']['gender'],
    :race => hero['appearance']['race'],

    :image => hero['image']['url']
  )
end

# {"response":"success",
#   "id":"717",
#   "name":"Wolverine",
#   "powerstats":{
#     "intelligence":"63",
#     "strength":"32",
#     "speed":"50",
#     "durability":"100",
#     "power":"89",
#     "combat":"100"
#     },
#   "biography":{
#       "full-name":"Logan",
#       "alter-egos":"No alter egos found.",
#       "aliases":[
#         "Weapon X","Weapon Ten","Death","Mutate 9601","Jim Logan","Emilio Garra","Weapon Chi","Experiment X","Agent Ten","Peter Richards","Mai kethLogan","Mr. Patch"
#         ],
#       "place-of-birth":"Alberta, Canada",
#       "first-appearance":"Incredible Hulk Vol. 2 #180",
#       "publisher":"Marvel Comics",
#       "alignment":"good"},
#       "appearance":{
#         "gender":"Male",
#         "race":"Mutant",
#         "height":["5'3","160 cm"],
#         "weight":["300 lb","135 kg"],
#         "eye-color":"Blue",
#         "hair-color":"Black"
#       },
#       "work":{
#         "occupation":"Adventurer, instructor, former bartender, bouncer, spy, government operative, mercenary, soldier, sailor, miner",
#         "base":"Xavier Institute, Salem Center, Westchester County, New York; Avengers Tower, New York City"
#       },
#       "connections":{
#         "group-affiliation":"X-Men, formerly Horsemen of Apocalypse, Fantastic Four, Secret Defenders, Clan Yashida, Department H, Alpha Flight, Department K, Team X, Team_Weapon_X, Devil's Brigade, Canadian Army",
#         "relatives":"John Howlett Sr. (father, deceased), Elizabeth Howlett (mother, deceased), John Howlett Jr. (brother, allegedly deceased), Viper (ex-wife), Amiko (foster daughter), Erista (son), X-23 (clone)"
#       },
#       "image":{"url":"https:\/\/www.superherodb.com\/pictures2\/portraits\/10\/100\/161.jpg"}}
