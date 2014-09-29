require 'environment'

names = [
  "Somewhere",
  "The Railway Club",
  "Commodore Ballroom",
  "Biltmore Cabaret",
  "Kay Meek Theatre",
  "Fortune Sound Club",
  "Vanier Park",
  "Vogue Theatre",
  "Lynn Valley Main Library - District Library Gallery",
  "Lynn Valley Main Library - District Library Gallery",
  "Lynn Valley Main Library - District Library Gallery",
  "Lynn Valley Main Library - District Library Gallery",
  "Lynn Valley Main Library - District Library Gallery",
  "Lynn Valley Main Library - District Library Gallery",
  "Lynn Valley Main Library - District Library Gallery",
  "Supernal Arts Academy",
  "Supernal Arts Academy",
  "Burnaby Art Gallery",
  "Burnaby City Hall Parking Lot",
  "Bose Corn Maze",
  "Bose Corn Maze",
  "Bose Corn Maze",
  "Bose Corn Maze",
  "Bose Corn Maze",
  "Bose Corn Maze",
  "Studio 1398 ",
  "Biltmore Cabaret",
  "Yuk Yuk's Comedy Club",
  "Rickshaw Theatre",
  "Kay Meek Centre",
  "The Savoy Pub",
  "Blarney Stone"
]



longitudes = [
  -123.1225831579,
  -123.1151488868,
  -123.1404787918,
  -123.09630974949,
  -123.15968362755,
  -123.1008012181,
  -123.14203891700,
  -123.12186871277,
  -123.03984861695,
  -123.03984861695,
  -123.03984861695,
  -123.03984861695,
  -123.03984861695,
  -123.03984861695,
  -123.03984861695,
  -123.0767336147,
  -123.0767336147,
  -122.9712506,
  -122.97288056344,
  -122.7680316,
  -122.7680316,
  -122.7680316,
  -122.7680316,
  -122.7680316,
  -122.7680316,
  -123.13504241700,
  -123.09630972837,
  -123.1151022,
  -123.09823281398,
  -123.15968362755,
  -123.0983088258,
  -123.1041487254,
]

#

latitudes = [
  49.27275179999999579,
  49.2828447868,
  49.2104205918,
  49.26036134949,
  49.33817452755,
  49.2804194181,
  49.27661181700,
  49.27989141277,
  49.3360871695,
  49.3360871695,
  49.3360871695,
  49.3360871695,
  49.3360871695,
  49.3360871695,
  49.3360871695,
  49.3134768147,
  49.3134768147,
  49.2409859,
  49.24337226344,
  49.1014306,
  49.1014306,
  49.1014306,
  49.1014306,
  49.1014306,
  49.1014306,
  49.26987651700,
  49.26036132837,
  49.2596297,
  49.28130021398,
  49.33817452755,
  49.2813015258,
  49.2832642254,
]

addresses = [
  "181 Roundhouse Mews Vancouver",
  "579 Dunsmuir Street Vancouver",
  "868 Granville Street Vancouver",
  "2755 Prince Edward St Vancouver",
  "1700 Mathers Avenue West Vancouver",
  "147 E Pender St Vancouver",
  "1695 Whyte Ave Vancouver",
  "918 Granville St Vancouver",
  "1277 Lynn Valley Road North Vancouver",
  "1277 Lynn Valley Road North Vancouver",
  "1277 Lynn Valley Road North Vancouver",
  "1277 Lynn Valley Road North Vancouver",
  "1277 Lynn Valley Road North Vancouver",
  "1277 Lynn Valley Road North Vancouver",
  "1277 Lynn Valley Road North Vancouver",
  "100 East 3rd Street North Vancouver",
  "100 East 3rd Street North Vancouver",
  "6344 Deer Lake Avenue Burnaby",
  "4949 Canada Way Burnaby",
  "64th Avenue & 156th Street Surrey",
  "64th Avenue & 156th Street Surrey",
  "64th Avenue & 156th Street Surrey",
  "64th Avenue & 156th Street Surrey",
  "64th Avenue & 156th Street Surrey",
  "64th Avenue & 156th Street Surrey",
  "1398 Cartwright St Vancouver",
  "2755 Prince Edward Street Vancouver",
  "2837 Cambie Street Vancouver",
  "254 East Hastings Street Vancouver",
  "1700 Mathers Avenue Vancouver",
  "258 East Hastings Street Vancouver",
  "216 Carrall Street Vancouver"
]


(0..31).each do |index|
  Venue.create(
    name:names[index],
    address:addresses[index],
    latitude:latitudes[index],
    longitude:longitudes[index]
  )
end

#CREATE 20 EVENTS of different types with venue id's matching

names = [
  "Photographie Festival 2014",
  "Jung People and Dirty Spells",
  "Dropkick Murphys and Blood or Whiskey",
  "Glass Animals",
  "Jim Byrnes and John Mann",
  "YACHT",
  "Bard on the Beach Shakespeare Festival",
  "Meet Herzog & de Meuron",
  "Maziar Mehrabi: Solo Exhibition",
  "Maziar Mehrabi: Solo Exhibition",
  "Maziar Mehrabi: Solo Exhibition",
  "Maziar Mehrabi: Solo Exhibition",
  "Maziar Mehrabi: Solo Exhibition",
  "Maziar Mehrabi: Solo Exhibition",
  "Maziar Mehrabi: Solo Exhibition",
  "Paint Your Square Art Contest - Supernal Arts",
  "Paint Your Square Art Contest - Supernal Arts",
  "In Wait: Full Circle Art Collective and Works from the Collection",
  "Burnaby's Farmers' Market is the place to find locally grown conventional and organic produce, prepared foods and crafts every Saturday from May 3 until October 25, 2014.",
  "Bose Corn Maze",
  "Bose Corn Maze",
  "Bose Corn Maze",
  "Bose Corn Maze",
  "Bose Corn Maze",
  "Bose Corn Maze",
  "Blind Pig Theatre presents DEAD MAN'S CELL PHONE by Sarah Ruhl",
  "Jon Dore in Vancouver",
  "Yuk Yuks Comedy Club presents Teachers Telling Tales",
  "Sklarbro Country (6:00PM) Duncan Trussell Family Hour Live! (9:00PM)",
  "LUNAFEST Film Festival",
  "Joni Miller and The Usual Suspects",
  "Killarney & Usual Suspects with DJ Steel"
]

dates = [
  "29/09/2014",
  "29/09/2014",
  "29/09/2014",
  "29/09/2014",
  "01/10/2014",
  "02/10/2014",
  "20/09/2014",
  "01/10/2014",
  "29/09/2014",
  "01/10/2014",
  "02/10/2014",
  "03/10/2014",
  "04/10/2014",
  "05/10/2014",
  "30/09/2014",
  "29/09/2014",
  "30/09/2014",
  "29/09/2014",
  "04/10/2014",
  "30/09/2014",
  "01/10/2014",
  "02/10/2014",
  "03/10/2014",
  "04/10/2014",
  "05/10/2014",
  "03/10/2014",
  "02/10/2014",
  "30/09/2014",
  "04/10/2014",
  "02/10/2014",
  "04/10/2014",
  "05/10/2014"
]

times = [
  "8:00am",
  "7:00pm",
  "8:00pm",
  "8:00pm",
  "10:00am",
  "7:00pm",
  "9:00am",
  "9:00am",
  "9:00am",
  "9:00am",
  "9:00am",
  "9:00am",
  "9:00am",
  "10:00am",
  "10;00am",
  "10:00am",
  "9:00am",
  "12:00pm",
  "12:00pm",
  "12:00pm",
  "12:00pm",
  "12:00pm",
  "6:00pm",
  "12:00pm",
  "12:00pm",
  "8:00pm",
  "7:00pm",
  "7:00pm",
  "6:00pm",
  "7:00pm",
  "8:00pm",
  "8:00pm"
]

descriptions = [
  "BC’s only Professional Photography Festival at the Roundhouse in Yaletown has something for everyone! This community event includes free micro-talks for the public, a student contest and Fusion 2014 seminars for amateurs/pros/videographers. Come see the latest gear from Nikon, Canon, Sony and Fuji at the industry expo and don’t miss the full-day keynote by Trevor & Faye Yerbury.",
  "Great event!",
  "Just awsome event!",
  "Very popular event!",
  "Most fans of the headliner don’t know this artist. Be one of the first! ",
  "Yacht will give you a great show if you have any appreciation of their music. Any venue big or small I've seen them perform amazing shows. Before Hot Chip I was actually afraid they'd outdone them and I adore Hot Chip. They're dynamic, engaging of the crowd and execute their sound with finesse. I'll continue to catch them whenever I can. ",
  "Performances June-September. Box office open 10:00 am to 6pm. Curtain: 7:30pm evenings, 1pm weekday matinees and 2pm weekend matinee's. Mondays: special events",
  "Learn about the design architects of the new Vancouver Art Gallery",
  "Combining his appreciation for the superheroes and villains of comic books with his fascination for emoticons and the roles they both play in contemporary society, Maziar Mehrabi creates a hybrid graphic art series celebrating both.",
  "Combining his appreciation for the superheroes and villains of comic books with his fascination for emoticons and the roles they both play in contemporary society, Maziar Mehrabi creates a hybrid graphic art series celebrating both.",
  "Combining his appreciation for the superheroes and villains of comic books with his fascination for emoticons and the roles they both play in contemporary society, Maziar Mehrabi creates a hybrid graphic art series celebrating both.",
  "Combining his appreciation for the superheroes and villains of comic books with his fascination for emoticons and the roles they both play in contemporary society, Maziar Mehrabi creates a hybrid graphic art series celebrating both.",
  "Combining his appreciation for the superheroes and villains of comic books with his fascination for emoticons and the roles they both play in contemporary society, Maziar Mehrabi creates a hybrid graphic art series celebrating both.",
  "Combining his appreciation for the superheroes and villains of comic books with his fascination for emoticons and the roles they both play in contemporary society, Maziar Mehrabi creates a hybrid graphic art series celebrating both.",
  "Combining his appreciation for the superheroes and villains of comic books with his fascination for emoticons and the roles they both play in contemporary society, Maziar Mehrabi creates a hybrid graphic art series celebrating both.",
  "Stop by Supernal Arts for an outdoor painting experience! We will provide participants with paints and a square on a large canvas. After all of the painting comes to an end, we will take a picture of each piece, and post each piece anonymously on the Supernal Arts Facebook page. The artist with the painting that receives the most likes will win the contest and receive a prize!",
  "Stop by Supernal Arts for an outdoor painting experience! We will provide participants with paints and a square on a large canvas. After all of the painting comes to an end, we will take a picture of each piece, and post each piece anonymously on the Supernal Arts Facebook page. The artist with the painting that receives the most likes will win the contest and receive a prize!",
  "In Wait is a visual collaboration by seven members of The Full Circle Art Collective and is a contemplative response to the artists’ personal experiences and the shared communal psyche as they examined an ordinary part of life: the ubiquitous act of waiting. Five of the artists have works in the permanent collection. Heather Aston, Jocelyn Barrable-Segal, Hannamari Jalovaara, Julie McIntyre, Milos Jones, Wendy Morosoff Smith and Rina Pita. View full public programs",
  "Burnaby's Farmers' Market is the place to find locally grown conventional and organic produce, prepared foods and crafts every Saturday from May 3 until October 25, 2014. ",
  "Welcome to our corn maze. Since 1999 we have had visitors from Europe, United states, Australia and Canada “GET LOST” in our corn. Bring family and friends during the day or bring everyone to the maze in the dark. Make sure you bring your flashlight, or use that app on your phone. Find your way through the maze using trivia questions that are posted at intersections.  Your answers will help you navigate your way.",
  "Welcome to our corn maze. Since 1999 we have had visitors from Europe, United states, Australia and Canada “GET LOST” in our corn. Bring family and friends during the day or bring everyone to the maze in the dark. Make sure you bring your flashlight, or use that app on your phone. Find your way through the maze using trivia questions that are posted at intersections.  Your answers will help you navigate your way.",
  "Welcome to our corn maze. Since 1999 we have had visitors from Europe, United states, Australia and Canada “GET LOST” in our corn. Bring family and friends during the day or bring everyone to the maze in the dark. Make sure you bring your flashlight, or use that app on your phone. Find your way through the maze using trivia questions that are posted at intersections.  Your answers will help you navigate your way.",
  "Welcome to our corn maze. Since 1999 we have had visitors from Europe, United states, Australia and Canada “GET LOST” in our corn. Bring family and friends during the day or bring everyone to the maze in the dark. Make sure you bring your flashlight, or use that app on your phone. Find your way through the maze using trivia questions that are posted at intersections.  Your answers will help you navigate your way.",
  "Welcome to our corn maze. Since 1999 we have had visitors from Europe, United states, Australia and Canada “GET LOST” in our corn. Bring family and friends during the day or bring everyone to the maze in the dark. Make sure you bring your flashlight, or use that app on your phone. Find your way through the maze using trivia questions that are posted at intersections.  Your answers will help you navigate your way.",
  "Welcome to our corn maze. Since 1999 we have had visitors from Europe, United states, Australia and Canada “GET LOST” in our corn. Bring family and friends during the day or bring everyone to the maze in the dark. Make sure you bring your flashlight, or use that app on your phone. Find your way through the maze using trivia questions that are posted at intersections.  Your answers will help you navigate your way.",
  "Directed by ANTHONY SHIM Starring: Piercey Dalton, Martin Hallat, Yvetta Fisher, Tiera Skovbye, Kendra Anderson, Lindsay Gibson and Brendan Taylor as the 'Dead Man' An incessantly ringing cell phone in a quiet cafe. A stranger at the next table who has had enough. And a dead man -- with a lot of loose ends. So beginsDead Man's Cell Phone, a wildly imaginative new comedy by MacArthur 'Genius' Grant recipient and Pulitzer Prize finalist, Sarah Ruhl, author of TheClean House and Eurydice. A work about how we memorialize the dead -- and how that remembering changes us -- it is the odyssey of a woman forced to confront her own assumptions about morality, redemption, and the need to connect in a technologically obsessed world.",
  "Named one of 10 comics to watch by Variety, Ottawa-born comedian, host and actor Jon Dore is renowned for his offbeat humour and unique bait-and-switch style. Dore is a favourite on the comedy club and festival circuit in Canada and the United States. He has hosted the Just for Laughs Festival Homegrown Comedy Competition on a number of occasions and has enjoyed sold-out runs at the Festivals Montreal and Toronto locations, at comedy festivals in Halifax, Vancouver, Portland and Washington, DC, and at the Bonnaroo Music and Arts Festival in Manchester, Tennessee.From his humble beginnings as the co-host of the cable talk show Daytime Ottawa (Rogers Television) and the irreverent roving reporter on Canadian Idol (CTV), Dore recently starred in the critically acclaimed ABC-TV series How to Live with Your Parents (for the Rest of Your Life) opposite Sarah Chalke, Elizabeth Perkins and Brad Garrett.. Dore is the host of HBO Canadas Funny as Hell, a series showcasing bold and uncensored comedy from the fastest rising comedians at the Just For Laughs Festival, premiering its its fifth season in 2015. He is the star of his own award-winning mockumentary series, The Jon Dore Television Show, documenting his hilarious and outrageous debates on lifes challenges and changes, from weight loss to gender. He also served as co-creator, co-producer and writer on the series, proving he is just as comfortable behind the camera. The series ran for a successful two seasons on IFC and The Comedy Network.Dore starred in the stand-up specials Comedy Central Presents...Jon Dore and Comedy Now! (CTV/The Comedy Network); appeared on a number Comedy Centrals specials including Live At Gotham, CC: Stand-Up: The Bonnaroo Experience and Mash Up; made guest-starring turns on How I Met Your Mother (CBS) and Scare Tactics (Syfy); and was the lead in the CBS pilot My Life As An Experiment. A regular on late night talk shows, Dore has the honor of being the first stand-up to appear on Conan (TBS).Dore's feature film credits include the indie drama Gus opposite Michelle Monaghan (Mission: Impossible III) and the comedy Stag, with Donald Faison (Scrubs) and Eva Amurri (Californication), which picked up two awards - Best Ensemble and Excellence in Filmmaking - at the LA Comedy Film Festival. TV Guide Canada called Dore one of the rising stars of the future and Toronto weekly NOW Magazine named him Best Male Stand-up. He is the recipient of four Canadian Comedy Awards including: Best Taped Live Performance (2010) for Just for Laughs; Best Performance by a Male in a Television Show (2009) for The Jon Dore Television Show; Best Writing on a Series (2008) for The Jon Dore Television Show; and Best Stand-up Newcomer (2006). He is also a two-time Gemini nominee (2008 & 2009) for Best Individual Performance in a Comedy Program or Series for The Jon Dore Television Show.",
  "Yuk Yuks Comedy Club presents Teachers Telling Tales. We love teachers! Especially the ones on this show!  Our featured guest is Peter Kelamis - (Montreal Comedy Festival, Comics (CBC Special), Stargate; SG-U, Corner Gas) ",
  "October 4th Union Events presents Sklarbro Country (6:00PM) Duncan Trussell Family Hour Live! (9:00PM)",
  "This season’s program of eight selected films will compel discussion, make you laugh, tug at your heartstrings and motivate you to make a difference in your community. Incredibly diverse in style and content, LUNAFEST is united by a common thread of exceptional storytelling - by, for and about women.",
  "A mixture of latin, blues, and rock brought together for a combo of good music.",
  "DJ starts at 8PM playing mostly Rock, some Top 40 Dance & a few Club Tracks through the night, during band breaks, and right to 3AM. Last set keeps the dance floor moving with Top 40 Club Traxx right to 3AM!"
]

pictures = [
  "/images/1.jpeg",
  "/images/col6.jpeg",
  "/images/2.jpeg",
  "/images/huge_avatar.jpeg",
  "/images/3.jpeg",
  "/images/4.jpeg",
  "/images/HDMPoster2014.png",
  "/images/sb53f4c9a1a405f.jpg",
  "/images/sb53f4c9a1a405f.jpg",
  "/images/sb53f4c9a1a405f.jpg",
  "/images/sb53f4c9a1a405f.jpg",
  "/images/sb53f4c9a1a405f.jpg",
  "/images/sb53f4c9a1a405f.jpg",
  "/images/sb53f4c9a1a405f.jpg",
  "/images/sb53fcad93e77b8.png",
  "/images/sb53fcad93e77b8.png",
  "/images/5.png",
  "/images/FarmersMarket.jpg",
  "/images/bose-maze-672x396.jpg",
  "/images/bose-maze-672x396.jpg",
  "/images/bose-maze-672x396.jpg",
  "/images/bose-maze-672x396.jpg",
  "/images/bose-maze-672x396.jpg",
  "/images/bose-maze-672x396.jpg",
  "/images/bose-maze-672x396.jpg",
  "/images/6.jpg",
  "/images/jon-dore-53.jpeg",
  "/images/yuk-yuks-comedy-club-presents-teachers-telling-tal-08.jpeg",
  "/images/sklarbro-country-600pm-duncan-trussell-family-hour-84.jpeg",
  "/images/lunafest-film-festival-27.jpeg",
  "/images/joni-miller-and-usual-suspects-11.jpeg",
  "/images/killarney-usual-suspects-dj-steel-62.jpeg"
]

types = [
  "festival",
  "music",
  "music",
  "music",
  "music",
  "music",
  "art",
  "art",
  "art",
  "art",
  "art",
  "art",
  "art",
  "art",
  "art",
  "art",
  "art",
  "market",
  "art",
  "art",
  "art",
  "art",
  "art",
  "art",
  "art",
  "comedy",
  "comedy",
  "comedy",
  "comedy",
  "festival",
  "festival",
  "music"
]



(0..31).each do |index|
  Event.create(
    name:names[index],
    date:dates[index].to_date,
    time:times[index].to_time,
    description:descriptions[index],
    picture_url:pictures[index],
    event_planner_id:6,
    venue_id:index
  )

  Event.types << Type.find_by(name:types[index])

end

#64th Avenue, Michigan, USA: 42.8377103100
# 3rd Street East, North Vancouver, BC V7M 2G2, Canada: 49.3134768147
# East Pender Street, Vancouver, BC V6A, Canada: 49.2804194181
# Roundhouse Mews, Vancouver, BC V6Z 2T9, Canada: 49.27275179999999579
# Dunsmuir Street, Vancouver, BC V6B 3K4, Canada: 49.2828447868
# 868 Granville Street, Vancouver, BC V6P 4Z7, Canada: 49.2104205918
# Granville Street, Vancouver, BC V6Z 1L2, Canada: 49.27989141277
# Lynn Valley Road, North Vancouver, BC V7J 3H2, Canada: 49.3360871695
# Whyte Avenue, Vancouver, BC V6J 3J9, Canada: 49.27661181700
# Mathers Avenue, West Vancouver, BC V7V 2G7, Canada: 49.33817452755
# Prince Edward Street, Vancouver, BC V5T 0B5, Canada: 49.26036134949
# Canada Way, Burnaby, BC V5G 1M2, Canada: 49.24337226344
# Deer Lake Avenue, Burnaby, BC V5G 3T1, Canada: 49.2409859

#64th Avenue, Michigan, USA: -85.9400321100
# 3rd Street East, North Vancouver, BC V7M 2G2, Canada: -123.0767336147
# East Pender Street, Vancouver, BC V6A, Canada: -123.1008012181
# Roundhouse Mews, Vancouver, BC V6Z 2T9, Canada: -123.1225831579
# Dunsmuir Street, Vancouver, BC V6B 3K4, Canada: -123.1151488868
# 868 Granville Street, Vancouver, BC V6P 4Z7, Canada: -123.1404787918
# Granville Street, Vancouver, BC V6Z 1L2, Canada: -123.12186871277
# Lynn Valley Road, North Vancouver, BC V7J 3H2, Canada: -123.03984861695
# Whyte Avenue, Vancouver, BC V6J 3J9, Canada: -123.14203891700
# Mathers Avenue, West Vancouver, BC V7V 2G7, Canada: -123.15968362755
# Prince Edward Street, Vancouver, BC V5T 0B5, Canada: -123.09630974949
# Canada Way, Burnaby, BC V5G 1M2, Canada: -122.97288056344
# Deer Lake Avenue, Burnaby, BC V5G 3T1, Canada: -122.9712506

#latitudes
# Object {Surrey, BC V3S, Canada: 49.1014306}
# longitudes
# Object {Surrey, BC V3S, Canada: -122.7680316}

# 64th Avenue, Michigan, USA: -85.9400321216
# Carrall Street, Vancouver, BC V6B 2J1, Canada: -123.1041487254
# East Hastings Street, Vancouver, BC V6A, Canada: -123.0983088258
# East Hastings Street, Vancouver, BC V6A, Canada: -123.09823281398
# Cartwright Street, Vancouver, BC V6H 3R9, Canada: -123.13504241700
# Mathers Avenue, West Vancouver, BC V7V 2G7, Canada: -123.15968362755
# Prince Edward Street, Vancouver, BC V5T 0B5, Canada: -123.09630972837
# Cambie Street, Vancouver, BC V5Z 3Y8, Canada: -123.1151022
# 64th Avenue, Michigan, USA: 42.8377103216
# Carrall Street, Vancouver, BC V6B 2J1, Canada: 49.2832642254
# East Hastings Street, Vancouver, BC V6A, Canada: 49.2813015258
# East Hastings Street, Vancouver, BC V6A, Canada: 49.28130021398
# Cartwright Street, Vancouver, BC V6H 3R9, Canada: 49.26987651700
# Mathers Avenue, West Vancouver, BC V7V 2G7, Canada: 49.33817452755
# Prince Edward Street, Vancouver, BC V5T 0B5, Canada: 49.26036132837
# Cambie Street, Vancouver, BC V5Z 3Y8, Canada: 49.2596297
