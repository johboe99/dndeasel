# This file should ensure the existence of records required to run the application in every environment (duction,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Character.destroy_all
Game.destroy_all
User.destroy_all

user_1 = User.create(email: "johannes@test.de", password: "123456", username: "Teradan")

user_2 = User.create(email: "angelina@test.de", password: "123456", username: "Dinovia")

user_3 = User.create(email: "alex@test.de", password: "123456", username: "Rabenor")

user_4 = User.create(email: "perle@test.de", password: "123456", username: "Rutt")

user_5 = User.create(email: "really@test.de", password: "123456", username: "Belrigg")

user_6 = User.create(email: "deniz@test.de", password: "123456", username: "Cris-Mas")

puts "Users created"

game_1 = Game.create(title: "Reise nach Aurelia", description: "blablabla langer toller text der dieses Abenteuer gaaaaanz genau beschreibt!", counter: 0, user_id: user_6.id)

game_2 = Game.create(title: "Another great Adventure", description: "nobody will ever read this", counter: 0, user_id: user_1.id)

puts "Games created"

char_1 = Character.create(name: "Arakos", classname: "Hexenmeister", level: 7, strength: 13, dexterity: 14,
                          constitution: 14, wisdom: 12, intelligence: 14, charisma: 20,
                          race: "Tiefling", alignment: "Chaotic-Good", background: "Scharlatan", expertise1: "Arcana",
                          expertise2: "Deception", user_id: user_1.id, game_id: game_1.id)

char_2 = Character.create(name: "Dinovia", classname: "Schurke", level: 7, strength: 13, dexterity: 18,
                          constitution: 14, wisdom: 13, intelligence: 11, charisma: 12,
                          race: "Halbelf", alignment: "Chaotic-Good", background: "Strassenkind", expertise1: "Stealth",
                          expertise2: "SleightOfHand", user_id: user_2.id, game_id: game_1.id)

char_3 = Character.create(name: "Rabenor", classname: "Barde", level: 7, strength: 12, dexterity: 16,
                          constitution: 14, wisdom: 13, intelligence: 12, charisma: 20,
                          race: "Elf", alignment: "Lawful-Good", background: "Volksheld", expertise1: "Deception",
                          expertise2: "Performance", user_id: user_3.id, game_id: game_1.id)

char_4 = Character.create(name: "Rutt", classname: "Paladin", level: 7, strength: 18, dexterity: 14,
                          constitution: 14, wisdom: 11, intelligence: 12, charisma: 18,
                          race: "Mensch", alignment: "Lawful-Neutral", background: "Soldat", expertise1: "Insight",
                          expertise2: "Investigation", user_id: user_4.id, game_id: game_1.id)

char_5 = Character.create(name: "Belrigg", classname: "Kleriker", level: 7, strength: 15, dexterity: 14,
                          constitution: 18, wisdom: 16, intelligence: 12, charisma: 10,
                          race: "Zwerg", alignment: "Lawful-Good", background: "Tempeldiener", expertise1: "Religion",
                          expertise2: "Medicine", user_id: user_5.id, game_id: game_1.id)

puts "Characters created"

puts "Seeding done"
