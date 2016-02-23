# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
User.destroy_all
Wine.destroy_all
Info.destroy_all
# Let's create a bunch of records
User.create([
  {
    username: "makethiswitty",
    password: "password0",
    preferences: "Red",
    email: "makingseeds@gmail.com"
  },
  {
    username: "thisstillisntwitty",
    password: "password1",
    preferences: "White",
    email: "secondseed@gmail.com"
  },
  {
    username: "thewitisalie",
    password: "password2",
    preferences: "Rose",
    email: "gmailorbust@gmail.com"
  }
])

Wine.create([
	{
    vineyard: "Breggo",
    year: "1985",
    name: "Some Red Wine",
    color: "Red",
    notes: " ",
    link: " "
	},
	{
    vineyard: "Elke Vineyards",
    year: "1984",
    name: "Some White Wine",
    color: "White",
    notes: " ",
    link: " "
	},
	{
    vineyard: "Navarro",
    year: "2003",
    name: "Some Rose Wine",
    color: "Rose",
    notes: " ",
    link: " "
	}
])

Info.create([
	{
		review: 4,
		textNotes: "here are some notes"
	},
	{
		review: 2,
		textNotes: "A second pair of notes"
	},
	])

# USERS: (:username, :password, :preferences, :email)
# WINES: (:vineyard, :year, :name, :color, :notes, :link)
# INFOS: (:review, :textNotes)