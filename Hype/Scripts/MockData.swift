//
//  MockData.swift
//  Hype
//
//  Created by Luthfor Khan on 11/14/21.
//

import Foundation


// Hubs
var replay: hubType = hubType(name: "Replay Cafe", location: "6545 St Antoine, Detroit, MI 48202", image: "replay", phone: "(313) 806-0579", site: "https://replaycafedetroit.com/", accessibility: "PC, consoles, arcade machines available", info: """
Detroit’s Gaming Haven, the ultimate combination of lounge and arena for gamers of every level.

Hosting 32 Alienware PCs, consoles ranging from NES to Next Gen. and a library of over 100 board games.

Come in for open play any day of the week.

Reservations available with 24-hours notice.
""")

var volt: hubType = hubType(name: "Vault of Midnight", location: " 2857 E Grand Blvd, Detroit, MI 48202", image: "volt", phone: "(313) 481-2165", site: "https://www.vaultofmidnight.com/", accessibility: "Wheelchair friendly, LGBTQ+ Friendly, Lots of community events", info: """
Vault of Midnight's Prime Directive:

To provide our customers with a unique and remarkable shopping experience that confounds the expectations of what is typically associated with a comic shop;

To act as ambassadors for all things geeky and to present our wares as the awesome, fun, and universally accessible pieces of entertainment that they are.
""")

var playerOne: hubType = hubType(name: "Ready Player One", location: "407 E Fort St, Detroit, MI 48226", image: "ReadyPlayerOne", phone: "(313) 395-3300", site: "https://www.rpodetroit.com/", accessibility: "Retro Arcade Games", info: """
Industrial-modern space lined with retro arcade games & serving beer, cocktails & global pub grub.
""")

var gamersGauntlet: hubType = hubType(name: "Gamer's Gauntlet", location: "20564 Hall Rd, Clinton Twp, MI 48038", image: "gg", phone: "(586) 412-6677", site: "https://www.gamersgauntlet.net/", accessibility: "Wheelchair Friendly", info: """
Your local gaming hub for Magic: The Gathering, Pokemon, YuGiOh, D&D, board games and supplies.
""")

var greenBrainComics: hubType = hubType(name: "Green Brain Comics", location: "13936 Michigan Ave, Dearborn, MI 48126", image: "GBC", phone: "(313) 582-9444", site: "https://stores.comichub.com/green_brain_comics", accessibility: "Wheelchair Friendly, Community Events, Free Comic Book Days", info: """
Specializing in new comics and graphic novels, our goal is to provide a fun comic book shopping experience for everyone.

Family owned & operated comic specialty shop in Dearborn for 35 years. Offering the largest selection of large & small press comic books & graphic novels in metro Detroit. Six time Metro Times "Best Comic Book Store". Four time Eisner Spirit of Comics Retailing Award nominee finalist.
""")

var gateKeeper: hubType = hubType(name: "Gate Keeper Games", location: "3961 Twelve Mile Rd, Berkley, MI 48072", image: "gate_keeper", phone: "(248) 439-0787", site: "https://www.gatekeepergaming.com/", accessibility: "Community Events, Wheelchair Friendly", info: "Your local, friendly game store!")

var eternalGames: hubType = hubType(name: "Eternal Games", location: "26051 Hoover Rd, Warren, MI 48089", image: "EternalGames", phone: "(586) 684-4263", site: "https://eternalgamesllc.com/", accessibility: "Wheelchair Friendly, Community Events", info: """
 Our Mission Statement:

To serve as an institution of positive interaction and belonging to all who enter. To instill a sense of community for gaming culture for those local and passing through. To be a beacon of fun and entertainment for those looking to escape the world out there for an evening. To be a sure source of everything gaming to the Metro-Detroit area.

Located in the southern end of the Hoover-11 Shopping Center in Warren, Michigan we boast a spacious, clean, well lit and inviting 2,400 sq ft gaming space in addition to our large extensive retail area.

Whether you love trading card games, role playing games, board games, or miniatures, we carry it all. We also support Organized Play for all of your favorite games and have a great community of players that share your passion and love.

Top all of that off with an energetic and knowledgeable staff, Eternal Games will meet and exceed all of your standards and expectations. There is always something awesome going on at Eternal Games! Check out our Weekly and Special Event calendars or hop on Facebook to see what games we are playing today. Come and join the fun!
""")

var comicsMore: hubType = hubType(name: "Comics and More", location: "28059 John R Rd, Madison Heights, MI 48071", image: "comics_and_more", phone: "(248) 399-3213", site: "https://www.facebook.com/pages/category/Comic-Bookstore/Comics-More-135031253176500/", accessibility: " ", info: """
Comics & More carries comics books, graphic novels, toys, MTG, Pokémon, and more. Specializing in new comics and back issues. New arrivals Wednesdays
""")

//events

// replay
var replay0: eventType = eventType(eventHub: replay, Name: "Pokémon TCG Event", Info: "Pokémon returns this Tuesday! The format will be sword and shield/ base to fusion strike. Proxies allowed!", Date: "Tuesday, November 9, 2021", Time: "6:00 PM 10:00 PM", Saves: Int.random(in: 3...200), Image: "pokemon")

var replay1: eventType = eventType(eventHub: replay, Name: "Call of Duty Vanguard - 4v4 CDL Variant LAN Tournament", Info: """
WHO : The best and bravest COD Vanguard Players.

WHAT: Double Elimination Best of 5’s and 3’s Competitive Bracket.

WHERE: Here at Replay Cafe, 6545 Saint Antoine Detroit MI 48202.

WHEN: November 12-14th.

WHY: Why the Heck Not?
""", Date: "Friday, November 12, 2021", Time: "6:00 PM 11:00 PM", Saves: Int.random(in: 3...200), Image: "cod")

var replay2: eventType = eventType(eventHub: replay, Name: "Bloodsport - Detroit's Weekly FGC Meetup", Info: "Now every Saturday night! Bloodsport is Replay Cafe’s weekly fighting game community event. Detroit’s top fighters show up and show off, with games throughout every console generation.", Date: "Saturday, November 27, 2021", Time: "7:00 PM 10:00 PM", Saves: Int.random(in: 3...200), Image: "blood")

// volt of midnight
var volt0: eventType = eventType(eventHub: volt, Name: "Adventurer League Online", Info: """
There has never been a better time to start playing Dungeons and Dragons. The game has never been more fun or accessible and we've partnered with expert Dungeon Masters ready to walk you through you and your party's adventure. Whether you're new to the game or a seasoned veteran, Adventurers League at Vault of Midnight is the perfect way to see what one of the most popular and enduring games in history has to offer

Age restrictions: players must be 13+ to register! In addition, any players under the age of 16 require a parent or guardian to register and play in the same adventure as the registrant.

Adventurers League awaits! Will you answer the call?
""", Date: "TBD", Time: "TBD", Saves: Int.random(in: 3...200), Image: "dnd")

// ready player one
var rpo0: eventType = eventType(eventHub: playerOne, Name: "Back to the 80's Cosplay and Trivia", Info: """
$ 10.00

Ready Player One and The Goblin King Players present

Back to the 80s Cosplay and Trivia

Come in your most radical 80’s movie cosplay or put an 80’s spin on your existing cosplay!

Trivia prizes will be given for the top 3 teams. A prize for most creative cosplay will also be awarded.

This is a family friendly event!
""", Date: "Saturday, November 20, 2021", Time: "2:00 PM 4:00 PM", Saves: Int.random(in: 3...200), Image: "back")

var rpo1: eventType = eventType(eventHub: playerOne, Name: "RPO Hot Dog Eating Contest", Info: """
$ 10.00

Come one, come all!

We present our Inaugural Hot Dog eating contest.

Go head to head in a battle royale to see who can eat the most hot dogs!

Entry fee is $10. The more entrants, the higher the prize pool will be!
""", Date: "Saturday, November 27, 2021", Time: "1:00 PM 4:00 PM", Saves: Int.random(in: 3...200), Image: "hotdog")

// gamers gauntlet
var gg0: eventType = eventType(eventHub: gamersGauntlet, Name: "Pokemon *Unsanctioned*", Info: """
This event will have limited seating.  Preregistration is highly suggested to ensure your spot.

​​​​Check-in will be from 4:00pm to 4:30pm followed by swiss rounds.
​​​​
​​​​​​We are requiring all participants to be fully vaccinated for Covid-19 and to wear face masks.
​​​​​​At Check-in we will be checking your vaccination card, screening for temperature, and presenting a waiver to sign.

​​​​Tournament cost $5  preregistration ($6 on site)
​​​​
​​​​Format:  Standard, Best of One

Prizes: Prizes in store credit based on attendance to top finishers.

​​​This event is NOT part a Play! Pokémon or League events. As such there will be no promotional support from the Pokemon Company.
""", Date: "Saturday, November 20, 2021", Time: "4:00 PM", Saves: Int.random(in: 3...200), Image: "poke")

var gg1: eventType = eventType(eventHub: gamersGauntlet, Name: "Final Fantasy Crystal Dominion Prerelease ", Info: """
This event will have limited seats.  Preregistration is highly suggested to ensure your spot.

​Check-in will be from 12:00pm to 12:30pm followed by deck building and 3 swiss rounds.
​​
​We are requiring all participants to be fully vaccinated for Covid-19 and to wear face masks.
​At Check-in we will be checking your vaccination card, screening for temperature, and presenting a waiver to sign.

​Tournament cost: $50 preregistration.  $51 on-site.  Discount will be automatically applied at checkout.

​Format: Prerelease Sealed

Prizes:
3-0 players wins 3 boosters
2-0-1 players win 2 boosters
2-1 players win 1 booster
""", Date: "Saturday, November 27, 2021", Time: "12:00 PM", Saves: Int.random(in: 3...200), Image: "ff")

var gg2: eventType = eventType(eventHub: gamersGauntlet, Name: "Modern: Store Championship", Info: """
Store Championships is a twice annual event in a similar style to "Game Days"

This event will have limited seating.  Preregistration is highly suggested to ensure your spot.

Check-in will be from 12:00pm to 12:30pm followed by swiss rounds.  This event may feature a top cut if attendance is outstanding.
​
We are requiring all participants to be fully vaccinated for Covid-19 and to wear face masks.
At Check-in we will be checking your vaccination card, screening for temperature, and presenting a waiver to sign.

Tournament cost: $10 Preregistration. $11 on site. Discount will be applied during checkout.

Format: Modern Constructed

You will need to download the Magic Companion App on your phone or tablet to receive your pairings at the store.
Hint: your user id and password are the same as MTG Arena.

Prizes:
All participants will receive a promo Arbor Elf with entry.
Top 8 participants will receive a promo Collected Company.
The event winner will receive a promo Wurmcoil Engine.
There will also be store credit prizes to top performers based on attendance.
Lastly we will have Promo Packs and Foils to be given as door prizes.
""", Date: "Saturday, December 4, 2021", Time: "12:00 PM", Saves: Int.random(in: 3...200), Image: "magic")

var gk0: eventType = eventType(eventHub: gateKeeper, Name: "Trivia at Gatekeeper Games", Info: "Trivia at Gatekeeper Games ", Date: "Saturday, November 6, 2021", Time: "7:00 PM", Saves: Int.random(in: 3...200), Image: "gkt")

var etg0: eventType = eventType(eventHub: eternalGames, Name: "Pokemon TCG", Info: """
Every Monday @ 6:30 PM
$5 Entry Fee
Constructed Format
4 rounds with no cut
Prizing in store credit based on attendance
""", Date: "Monday, November 22, 2021", Time: "6:30 PM – 10:00 PM", Saves: Int.random(in: 3...200), Image: "pokemon")

var etg1: eventType = eventType(eventHub: eternalGames, Name: "Yu-Gi-Oh! Constructed", Info: """
Entry: $5
Prizing: Store Credit based on attendance and record (no cut)
""", Date: "Friday, November 26, 2021", Time: "6:00 PM – 10:00 PM", Saves: Int.random(in: 3...200), Image: "yugioh")

var etg2: eventType = eventType(eventHub: eternalGames, Name: "Flesh & Blood", Info: """
Flesh and Blood
$5 entry
Blitz format
6:30 pm start

Enjoy a first-look sneak preview into the world of Aria!

Promos are from the upcoming set: Tales of Aria.

Top 8 prizing from the Armory Lexi Kit. A People's Champion 'Light it Up' playmat may be awarded to a participant that is seen reflecting positive community spirit!
""", Date: "Thursday, November 18, 2021", Time: "6:30 PM – 10:00 PM", Saves: Int.random(in: 3...200), Image: "flesh")

var etg3: eventType = eventType(eventHub: eternalGames, Name: "X-Wing Miniatures", Info: """
Time: 1:00pm
Entry:  $5

Come join in on some weekly X-Wing miniatures play!
""", Date: "Saturday, November 27, 2021", Time: "1:00 PM – 6:00 PM", Saves: Int.random(in: 3...200), Image: "wing")

var etg4: eventType = eventType(eventHub: eternalGames, Name: "Eternal Games Store Championship", Info: """
We're super excited to announce the WPN Store Championship!

Format: Modern Swiss
1:00 pm FIRM start time
$10 entry
Swiss rounds with a cut to top 8.
Competitive regulation.
(Deck lists will be required.)

100 player capacity

First place: Wurmcoil Engine promo card
Top 8: Collected Company promo card
The first 40 players to sign up will receive an Arbor Elf promo card.

Store Credit prizing based on attendance.

*Please arrive early to ensure your spot in the event. Tournament starts at 1:00 pm sharp.*
""", Date: "Saturday, December 4, 2021", Time: "1:00 PM – 10:00 PM", Saves: Int.random(in: 3...200), Image: "magic")


// lists
var hubList: [hubType] = [replay, volt, playerOne, gamersGauntlet, greenBrainComics, gateKeeper, eternalGames, comicsMore].shuffled()

var eventReplay: [eventType] = [replay0, replay1, replay2]

var eventVolt: [eventType] = [volt0]

var eventGg: [eventType] = [gg0, gg1, gg2]

var eventGk: [eventType] = [gk0]

var eventEt: [eventType] = [etg0, etg1, etg2, etg3, etg4]

var eventList: [eventType] = [replay0, replay1, replay2, volt0, gg0, gg1, gg2, gk0, etg0, etg1, etg2, etg3, etg4].shuffled()

var savedEvent: [eventType] = [eventList[6], eventList[7], eventList[8], eventList[9]]

var pastEvent: [eventType] = [eventList[10], eventList[11], eventList[12]]
