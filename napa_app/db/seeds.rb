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
    vineyard: "Opus One",
    year: "1985",
    name: "Bordeaux Blend",
    color: "Red",
    notes: "",
    link: "http://www.opusonewinery.com/"
	},
	{
    vineyard: "Screaming Eagle",
    year: "1984",
    name: "Cabernet Sauvignon",
    color: "Red",
    notes: "",
    link: "http://www.screamingeagle.com/"
	},
	{
    vineyard: "Caymus Vineyards",
    year: "2003",
    name: "Cabernet Sauvignon",
    color: "Red",
    notes: "",
    link: "http://www.caymus.com/"
	}
])

Info.create([
	{
		review: 4,
		textNotes: "here are some notes",
        user_id: 1,
        wine_id: 1
	},
	{
		review: 2,
		textNotes: "A second pair of notes",
        user_id: 2,
        wine_id: 2
	},
	])

# USERS: (:username, :password, :preferences, :email)
# WINES: (:vineyard, :year, :name, :color, :notes, :link)
# INFOS: (:review, :textNotes)








