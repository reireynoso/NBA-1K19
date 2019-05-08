AwayTeam.destroy_all
AwayPlayer.destroy_all
HomePlayer.destroy_all
HomeTeam.destroy_all
User.destroy_all

# Away Teams #
bucks = AwayTeam.create(name: "Milwaukee Bucks", location: "Milwaukee, Wisconsin", num_of_wins: 0, num_of_losses: 0)
raptors = AwayTeam.create(name: "Toronto Raptors", location: "Toronto, Ontario", num_of_wins: 0, num_of_losses: 0)
magic = AwayTeam.create(name: "Orlando Magic", location: "Orlando, Florida", num_of_wins: 0, num_of_losses: 0)
pistons = AwayTeam.create(name: "Detroit Pistons", location: "Detroit, Michigan", num_of_wins: 0, num_of_losses: 0)
knicks = AwayTeam.create(name: "New York Knicks", location: "New York, New York", num_of_wins: 0, num_of_losses: 0)
warriors = AwayTeam.create(name: "Golden State Warriors", location: "Oakland, California", num_of_wins: 0, num_of_losses: 0)
nuggets = AwayTeam.create(name: "Denver Nuggets", location: "Denver, Colorado", num_of_wins: 0, num_of_losses: 0)
spurs = AwayTeam.create(name: "San Antonio Spurs", location: "San Antonio, Texas", num_of_wins: 0, num_of_losses: 0)
clippers = AwayTeam.create(name: "Los Angeles Clippers", location: "Los Angeles, California", num_of_wins: 0, num_of_losses: 0)
suns = AwayTeam.create(name: "Phoenix Suns", location: "Phoenix, Arizona", num_of_wins: 0, num_of_losses: 0)
cavaliers = AwayTeam.create(name: "Cleveland Cavaliers", location: "Cleveland, Ohio", num_of_wins: 0, num_of_losses: 0)
mavericks = AwayTeam.create(name: "Dallas Mavericks", location: "Dallas, Texas", num_of_wins: 0, num_of_losses: 0)


# Away Players #

# Bucks
AwayPlayer.create(name: "Giannis Antetokounmpo", position: "PF", value: 10, away_team_id: bucks.id)
AwayPlayer.create(name: "Khris Middleton", position: "SF", value: 8, away_team_id: bucks.id)
AwayPlayer.create(name: "Nikola Mirotic", position: "SG", value: 8, away_team_id: bucks.id)
AwayPlayer.create(name: "Brook Lopez", position: "C", value: 8, away_team_id: bucks.id)
AwayPlayer.create(name: "Eric Bledsoe", position: "PG", value: 8, away_team_id: bucks.id)

# Raptors
AwayPlayer.create(name: "Kawhi Leonard", position: "SF", value: 10, away_team_id: raptors.id)
AwayPlayer.create(name: "Pascal Siakam", position: "PF", value: 8, away_team_id: raptors.id)
AwayPlayer.create(name: "Marc Gasol", position: "C", value: 9, away_team_id: raptors.id)
AwayPlayer.create(name: "Danny Green", position: "SG", value: 7, away_team_id: raptors.id)
AwayPlayer.create(name: "Kyle Lowry", position: "PG", value: 9, away_team_id: raptors.id)

# Magic
AwayPlayer.create(name: "Evan Fournier", position: "SF", value: 8, away_team_id: magic.id)
AwayPlayer.create(name: "Aaron Gordon", position: "PF", value: 8, away_team_id: magic.id)
AwayPlayer.create(name: "Nikola Vucevic", position: "C", value: 8, away_team_id: magic.id)
AwayPlayer.create(name: "D.J. Austin", position: "PG", value: 8, away_team_id: magic.id)
AwayPlayer.create(name: "Jonathan Isaac", position: "SG", value: 8, away_team_id: magic.id)

# Pistons
AwayPlayer.create(name: "Andre Drummond", position: "C", value: 9, away_team_id: pistons.id)
AwayPlayer.create(name: "Blake Griffin", position: "PF", value: 9, away_team_id: pistons.id)
AwayPlayer.create(name: "Reggie Jackson", position: "PG", value: 8, away_team_id: pistons.id)
AwayPlayer.create(name: "Wayne Ellington", position: "SG", value: 8, away_team_id: pistons.id)
AwayPlayer.create(name: "Bruce Brown Jr.", position: "SF", value: 7, away_team_id: pistons.id)

# Knicks
AwayPlayer.create(name: "Kevin Knox", position: "SF", value: 8, away_team_id: knicks.id)
AwayPlayer.create(name: "Luke Kornet", position: "PF", value: 7, away_team_id: knicks.id)
AwayPlayer.create(name: "Mitchell Robinson", position: "C", value: 7, away_team_id: knicks.id)
AwayPlayer.create(name: "Damyean Dotson", position: "SG", value: 7, away_team_id: knicks.id)
AwayPlayer.create(name: "Mario Hezonja", position: "PG", value: 8, away_team_id: knicks.id)

# Warriors
AwayPlayer.create(name: "Draymond Green", position: "PF", value: 9, away_team_id: warriors.id)
AwayPlayer.create(name: "Stephen Curry", position: "PG", value: 10, away_team_id: warriors.id)
AwayPlayer.create(name: "Klay Thompson", position: "SG", value: 9, away_team_id: warriors.id)
AwayPlayer.create(name: "Andre Iguodala", position: "C", value: 8, away_team_id: warriors.id)
AwayPlayer.create(name: "Kevin Durant", position: "SF", value: 10, away_team_id: warriors.id)

# Nuggets
AwayPlayer.create(name: "Torrey Craig", position: "SG", value: 7, away_team_id: nuggets.id)
AwayPlayer.create(name: "Paul Millsap", position: "PF", value: 8, away_team_id: nuggets.id)
AwayPlayer.create(name: "Nikola Jokic", position: "C", value: 9, away_team_id: nuggets.id)
AwayPlayer.create(name: "Gary Harris", position: "SF", value: 8, away_team_id: nuggets.id)
AwayPlayer.create(name: "Jamal Murray", position: "PG", value: 8, away_team_id: nuggets.id)

# Spurs
AwayPlayer.create(name: "LaMarcus Aldridge", position: "PF", value: 9, away_team_id: spurs.id)
AwayPlayer.create(name: "DeMar DeRozan", position: "SG", value: 9, away_team_id: spurs.id)
AwayPlayer.create(name: "Bryn Forbes", position: "SF", value: 7, away_team_id: spurs.id)
AwayPlayer.create(name: "Jakob Poeltl", position: "C", value: 8, away_team_id: spurs.id)
AwayPlayer.create(name: "Derrick White", position: "PG", value: 7, away_team_id: spurs.id)

# Clippers
AwayPlayer.create(name: "JaMychal Green", position: "PF", value: 8, away_team_id: clippers.id)
AwayPlayer.create(name: "Landry Shamet", position: "C", value: 7, away_team_id: clippers.id)
AwayPlayer.create(name: "Danilo Gallinari", position: "SF", value: 8, away_team_id: clippers.id)
AwayPlayer.create(name: "Shai Gilgeous-Alexander", position: "SG", value: 7, away_team_id: clippers.id)
AwayPlayer.create(name: "Patrick Beverley", position: "PG", value: 8, away_team_id: clippers.id)

# Suns
AwayPlayer.create(name: "Dragan Bender", position: "PF", value: 7, away_team_id: suns.id)
AwayPlayer.create(name: "Mikal Bridges", position: "SG", value: 7, away_team_id: suns.id)
AwayPlayer.create(name: "Josh Jackson", position: "SF", value: 8, away_team_id: suns.id)
AwayPlayer.create(name: "Elie Okobo", position: "PG", value: 7, away_team_id: suns.id)
AwayPlayer.create(name: "Ray Spalding", position: "C", value: 7, away_team_id: suns.id)

# Cavaliers
AwayPlayer.create(name: "Brandon Knight", position: "PG", value: 7, away_team_id: cavaliers.id)
AwayPlayer.create(name: "Larry Nance Jr.", position: "SG", value: 8, away_team_id: cavaliers.id)
AwayPlayer.create(name: "Cedi Osman", position: "SF", value: 7, away_team_id: cavaliers.id)
AwayPlayer.create(name: "Collin Sexton", position: "PF", value: 8, away_team_id: cavaliers.id)
AwayPlayer.create(name: "Ante Zizic", position: "C", value: 7, away_team_id: cavaliers.id)

# Mavericks
AwayPlayer.create(name: "Justin Jackson", position: "SF", value: 7, away_team_id: mavericks.id)
AwayPlayer.create(name: "Dirk Nowitzki", position: "PF", value: 7, away_team_id: mavericks.id)
AwayPlayer.create(name: "Dwight Powell", position: "C", value: 8, away_team_id: mavericks.id)
AwayPlayer.create(name: "Jalen Brunson", position: "SG", value: 7, away_team_id: mavericks.id)
AwayPlayer.create(name: "Devin Harris", position: "PG", value: 7, away_team_id: mavericks.id)



# Home Players #

# Point Guards #
HomePlayer.create(name: "Magic Johnson", position: "PG", value: 10)
HomePlayer.create(name: "Allen Iverson", position: "PG", value: 10)
HomePlayer.create(name: "James Harden", position: "PG", value: 10)
HomePlayer.create(name: "Russell Westbrook", position: "PG", value: 10)
HomePlayer.create(name: "Kyrie Irving", position: "PG", value: 10)
HomePlayer.create(name: "Damian Lillard", position: "PG", value: 10)
HomePlayer.create(name: "Chris Paul", position: "PG", value: 9)
HomePlayer.create(name: "John Wall", position: "PG", value: 9)
HomePlayer.create(name: "Kemba Walker", position: "PG", value: 9)
HomePlayer.create(name: "Ben Simmons", position: "PG", value: 9)
HomePlayer.create(name: "D'Angelo Russell", position: "PG", value: 8)
HomePlayer.create(name: "Jrue Holiday", position: "PG", value: 8)

# Shooting Guards #
HomePlayer.create(name: "Michael Jordan", position: "SG", value: 10)
HomePlayer.create(name: "Kobe Bryant", position: "SG", value: 10)
HomePlayer.create(name: "Jimmy Butler", position: "SG", value: 10)
HomePlayer.create(name: "Victor Oladipo", position: "SG", value: 10)
HomePlayer.create(name: "Donovan Mitchell", position: "SG", value: 10)
HomePlayer.create(name: "Devin Booker", position: "SG", value: 10)
HomePlayer.create(name: "Bradley Beal", position: "SG", value: 9)
HomePlayer.create(name: "C.J McCollum", position: "SG", value: 9)
HomePlayer.create(name: "Jaylen Brown", position: "SG", value: 9)
HomePlayer.create(name: "Dwayne Wade", position: "SG", value: 9)
HomePlayer.create(name: "Eric Gordon", position: "SG", value: 8)
HomePlayer.create(name: "Tyreke Evans", position: "SG", value: 8)


# Small Forwards #
HomePlayer.create(name: "Larry Bird", position: "SF", value: 10)
HomePlayer.create(name: "Julius Erving", position: "SF", value: 10)
HomePlayer.create(name: "Lebron James", position: "SF", value: 10)
HomePlayer.create(name: "Paul George", position: "SF", value: 10)
HomePlayer.create(name: "Gordon Hayward", position: "SF", value: 10)
HomePlayer.create(name: "Jayson Tatum", position: "SF", value: 10)
HomePlayer.create(name: "Tobias Harris", position: "SF", value: 9)
HomePlayer.create(name: "Brandom Ingram", position: "SF", value: 9)
HomePlayer.create(name: "Andrew Wiggins", position: "SF", value: 9)
HomePlayer.create(name: "Otto Porter", position: "SF", value: 8)
HomePlayer.create(name: "Robert Covington", position: "SF", value: 8)
HomePlayer.create(name: "Trevor Ariza", position: "SF", value: 8)

# Power Forwards #
HomePlayer.create(name: "Karl Malone", position: "PF", value: 10)
HomePlayer.create(name: "Dennis Rodman", position: "PF", value: 10)
HomePlayer.create(name: "Anthony Davis", position: "PF", value: 10)
HomePlayer.create(name: "Al Horford", position: "PF", value: 10)
HomePlayer.create(name: "Kristaps Porzingis", position: "PF", value: 9)
HomePlayer.create(name: "Kevin Love", position: "PF", value: 9)
HomePlayer.create(name: "Kyle Kuzma", position: "PF", value: 9)
HomePlayer.create(name: "Serge Ibaka", position: "PF", value: 9)
HomePlayer.create(name: "Bobby Portis", position: "PF", value: 8)
HomePlayer.create(name: "Jabari Parker", position: "PF", value: 8)
HomePlayer.create(name: "Marvin Bagley", position: "PF", value: 8)
HomePlayer.create(name: "Carmelo Anthony", position: "PF", value: 8)

# Centers #
HomePlayer.create(name: "Kareem Abdul-Jabbar", position: "C", value: 10)
HomePlayer.create(name: "Shaquille O'Neal", position: "C", value: 10)
HomePlayer.create(name: "Karl-Anthony Towns", position: "C", value: 10)
HomePlayer.create(name: "Joel Embiid", position: "C", value: 10)
HomePlayer.create(name: "Rudy Gobert", position: "C", value: 9)
HomePlayer.create(name: "Steven Adams", position: "C", value: 9)
HomePlayer.create(name: "Hassan Whiteside", position: "C", value: 9)
HomePlayer.create(name: "Clint Capela", position: "C", value: 9)
HomePlayer.create(name: "Dwight Howard", position: "C", value: 9)
HomePlayer.create(name: "Pau Gasol", position: "C", value: 8)
HomePlayer.create(name: "Jusuf Nurkic", position: "C", value: 8)
HomePlayer.create(name: "Jonas Valanciunas", position: "C", value: 8)

puts "Done"
