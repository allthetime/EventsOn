#CREATE 20 Venues With locations around Vancouver

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
  "64th Avenue & 156th Street",
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
  -85.9400321100
]

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
  42.8377103100,
]

(0..19).each do |index|
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
]



(0..19).each do |index|
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
