# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@users_list = [
  {
    first_name: "Alexander",
    last_name: "Hollmann",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575630948/user_profile_images/T02NE0241-UPM08BB4G-e03b376ab89c-512_ud9mzo.jpg",
    locations: ["Frankfurt", "Berlin"],
    languages: ["English", "German"]
  },
  {
    first_name: "Alexandru",
    last_name: "Sima",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575630972/user_profile_images/T02NE0241-UP7UZUUTC-285ae1d2dce5-512_o0pvwi.jpg",
    locations: ["Barcelona"],
    languages: ["English", "Romanian"]
  },
  {
    first_name: "Andrés",
    last_name: "Ramos",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575630984/user_profile_images/T02NE0241-UPLK9PZ2R-381c9c64d4d1-512_vx01ze.jpg",
    locations: ["Barcelona", "Berlin", "London", "Paris", "Amsterdam", "Madrid"],
    languages: ["English", "Spanish"]
  },
  {
    first_name: "Angelica",
    last_name: "De Moffarts",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631032/user_profile_images/T02NE0241-UP96TAG67-9eb3437bec64-512_tlonji.jpg",
    locations: ["Amsterdam", "London", "Paris", "Barcelona", "Madrid"],
    languages: ["English", "French", "Dutch"]
  },
  {
    first_name: "Avalon",
    last_name: "Van Der Horst",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631328/user_profile_images/T02NE0241-U8314BQ82-01c1dcf7eca3-512_jmkpyi.jpg",
    locations: ["Amsterdam", "Barcelona", "Berlin", "Paris", "Madrid"],
    languages: ["English", "Dutch", "Spanish"]
  },
  {
    first_name: "Ben",
    last_name: "Toosey",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631375/user_profile_images/T02NE0241-UPL535Y6Q-cc4875c7306c-512_ht297e.jpg",
    locations: ["London", "Barcelona", "Madrid", "Valencia"],
    languages: ["English", "Spanish", "Catalan"]
  },
  {
    first_name: "Camille",
    last_name: "Bonnet",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631397/user_profile_images/T02NE0241-U7NAVD676-9fbc275d84b3-512_vuaiva.jpg",
    locations: ["Paris", "Amsterdam", "Barcelona", "Berlin"],
    languages: ["English", "French", "German"]
  },
  {
    first_name: "Cassandre",
    last_name: "Houzé De L'Aulnoit",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631397/user_profile_images/T02NE0241-U7NAVD676-9fbc275d84b3-512_vuaiva.jpg",
    locations: ["Paris", "Barcelona", "Amsterdam"],
    languages: ["English", "French"]
  },
  {
    first_name: "Christos",
    last_name: "Kaltaveridis",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631481/user_profile_images/T02NE0241-UPL897MJ8-e50ac5a48da9-512_iop3oz.png",
    locations: ["London", "Edinburgh", "Barcelona", "Athens"],
    languages: ["English", "Greek"]
  },
  {
    first_name: "Claire",
    last_name: "Dinsart",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631499/user_profile_images/T02NE0241-UHBDC0J3C-a773b355ed2c-512_dp7k1c.png",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English", "French"]
  },
  {
    first_name: "Claire",
    last_name: "Gautier",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631519/user_profile_images/T02NE0241-UA0DUPP0E-025a8aae0543-512_mkeo2u.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English", "French"]
  },
  {
    first_name: "Edward",
    last_name: "Jacobs",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631539/user_profile_images/T02NE0241-UPE6G9J49-d22621b165bd-512_fhpewx.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English"]
  },
  {
    first_name: "Elena",
    last_name: "Perez",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631636/user_profile_images/T02NE0241-UPNSBGT0W-c173a85e1293-512_jmfmsw.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English", "Spanish"]
  },
  {
    first_name: "Elise",
    last_name: "Navarro",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631659/user_profile_images/T02NE0241-UPL53A45S-d67170dcd996-512_l5rdiy.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English", "Spanish"]
  },
  {
    first_name: "Ellyn",
    last_name: "Bouscasse",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631683/user_profile_images/T02NE0241-U4598RZGF-b92abaa9d3bf-512_osyidq.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English", "French", "Spanish"]
  },
  {
    first_name: "Gabriel",
    last_name: "Constantin Ursache",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631767/user_profile_images/T02NE0241-UPL6PFTA8-77844c4dfb36-512_vcs2sh.png",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English", "Romanian"]
  },
  {
    first_name: "Gijs",
    last_name: "Maks",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631794/user_profile_images/T02NE0241-UPL4NQ8DS-2b931133ac94-512_c7a661.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English", "Dutch"]
  },
  {
    first_name: "Gus",
    last_name: "De Vita",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631854/user_profile_images/T02NE0241-U0CAK1T88-81f976504e1c-512_b8tobm.jpg",
    locations: ["Barcelona", "Madrid"],
    languages: ["English", "Portugese", "Spanish"]
  },
  {
    first_name: "Hamza",
    last_name: "M'Barek",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631890/user_profile_images/T02NE0241-UPNR72TP0-ae9ed4ff472c-512_lfwhae.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English", "French", "Moroccan"]
  },
  {
    first_name: "Iñaki",
    last_name: "Mediavilla",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631965/user_profile_images/T02NE0241-UP7R4UMTL-a8948787a53c-512_pa33xz.png",
    locations: ["Barcelona", "Valencia", "Madrid"],
    languages: ["English", "Spanish"]
  },
  {
    first_name: "Isac",
    last_name: "Giuk Kim",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632170/user_profile_images/T02NE0241-UPLK2131N-e1b9f6081978-512_bcsftl.png",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English", "Spanish", "Korean"]
  },
  {
    first_name: "Ivana",
    last_name: "Piljic",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632262/user_profile_images/T02NE0241-UPE8T7BMF-d221df9b7ce2-512_j6wwur.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English", "Croatian"]
  },
  {
    first_name: "Malou",
    last_name: "Allertz",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632348/user_profile_images/T02NE0241-U281EAB8D-6bd41d7b2018-512_lugths.png",
    locations: ["Amsterdam", "Paris", "Barcelona"],
    languages: ["English", "Dutch"]
  },
  {
    first_name: "Miguel Ángel",
    last_name: "Marfil Rubio",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632434/user_profile_images/T02NE0241-UPE7M99U1-32151dfec812-512_xfqpoh.jpg",
    locations: ["Barcelona", "Valencia", "Madrid"],
    languages: ["English", "Spanish", "Catalan"]
  },
  {
    first_name: "Mireia",
    last_name: "Palmero",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632531/user_profile_images/T02NE0241-UPNEUMKCP-2be77693c771-512_c0wedv.jpg",
    locations: ["Barcelona", "Valencia", "Madrid"],
    languages: ["English", "Spanish"]
  },
  {
    first_name: "Nicholas",
    last_name: "Jardine",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632608/user_profile_images/T02NE0241-UP7T3D858-a61e60b3df53-512_qiihnf.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English"]
  },
  {
    first_name: "Nico",
    last_name: "Standup",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632684/user_profile_images/T02NE0241-UKPKXKN3V-63e484c7b1df-512_hke0lb.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English", "Spanish"]
  },
  {
    first_name: "Ollie",
    last_name: "Senduk",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632761/user_profile_images/T02NE0241-U2965HDS9-855f9fbf052e-512_qytqoi.jpg",
    locations: ["Amsterdam", "Paris", "Barcelona"],
    languages: ["English", "Dutch"]
  },
  {
    first_name: "Pablo",
    last_name: "Maisuls",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632840/user_profile_images/T02NE0241-UPL530BJ8-71dcd1eab182-512_snomcx.png",
    locations: ["Barcelona", "Valencia", "Madrid"],
    languages: ["English", "Spanish"]
  },
  {
    first_name: "Roy",
    last_name: "Souvereyns",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632956/user_profile_images/T02NE0241-UPNNQ4SQ7-7a67b587c825-512_i1goyi.png",
    locations: ["Amsterdam", "Paris", "Barcelona"],
    languages: ["English", "Dutch", "French"]
  },
  {
    first_name: "Sandra",
    last_name: "Carmona Serrat",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575633072/user_profile_images/T02NE0241-UPNR00MJS-3f78e18209ea-512_pzuxot.jpg",
    locations: ["Barcelona", "Valencia", "Madrid"],
    languages: ["English", "Spanish", "Catalan"]
  },
  {
    first_name: "Sarah",
    last_name: "Ma",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575633188/user_profile_images/T02NE0241-UPNR02CCE-79f183a257a3-512_buopuu.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English"]
  },
  {
    first_name: "Smruthi",
    last_name: "Lattupalli",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575633315/user_profile_images/T02NE0241-UPE3UGVHP-ca0511be2cc0-512_njvjve.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English", "Hindi"]
  },
  {
    first_name: "Thomas",
    last_name: "Julien",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575633440/user_profile_images/T02NE0241-UP9P145FU-5c9d7959b92f-512_dkkh5s.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English", "French", "Spanish"]
  },
  {
    first_name: "Veronika",
    last_name: "Wajda",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575633583/user_profile_images/T02NE0241-UPNSFK57Y-fded15e76e1f-512_wcspvd.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English"]
  },
  {
    first_name: "Humbeline",
    last_name: "De Marcillac",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575633722/user_profile_images/T02NE0241-UP7SKR550-27db0832a318-512_xy6law.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English", "French", "Spanish"]
  },
  {
    first_name: "Glen",
    last_name: "Warren",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575633856/user_profile_images/T02NE0241-UL37H2W9L-a2b642e6c3d4-512_htrphc.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English", "Spanish"]
  },
  {
    first_name: "Daniel",
    last_name: "Landes",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575635966/user_profile_images/T02NE0241-UP7SKTM0S-5cd01d3cbc2a-512_pz6zsa.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin"],
    languages: ["English"]
  },
    {
    first_name: "Inou",
    last_name: "Ridder",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575635966/user_profile_images/T02NE0241-UP7SKTM0S-5cd01d3cbc2a-512_pz6zsa.jpg",
    locations: ["Paris", "Barcelona", "London", "Berlin", "Amsterdam"],
    languages: ["English", "Dutch", "French", "Spanish"]
  }
]

@companies_list = [
  {
    name: "Google",
    domain: "google.com",
    address: "San Francisco",
    locations: ["Madrid", "London", "Paris", "Berlin", "Rome", "Athens", "Amsterdam"],
    languages: ["English", "French", "German", "Dutch", "Italian", "Greek"],
    photo_logo: "https://storage.googleapis.com/gd-wagtail-prod-assets/original_images/evolving_google_identity_share.jpg",
    photo_banner: "https://media.blogto.com/articles/2019918-google.jpg?w=1200&cmd=resize_then_crop&height=630&quality=70"
  },
  {
    name: "Facebook",
    domain: "facebook.com",
    address: "San Francisco",
    locations: ["Madrid", "London", "Paris", "Berlin", "Rome", "Athens", "Amsterdam"],
    languages: ["English", "French", "German", "Dutch", "Italian", "Greek"],
    photo_logo: "https://about.fb.com/wp-content/uploads/2019/11/facebook_wordmark.gif",
    photo_banner: "https://www.designboom.com/wp-content/uploads/2018/09/frank-gehry-facebook-campus-menlo-park-MPK-21-california-designboom-1800.jpg"
  },
  {
    name: "Twitter",
    domain: "twitter.com",
    address: "San Francisco",
    locations: ["Madrid", "London", "Paris", "Berlin", "Rome", "Athens", "Amsterdam"],
    languages: ["English", "French", "German", "Dutch", "Italian", "Greek"],
    photo_logo: "https://s3.amazonaws.com/img.mynetdiary.com/src/logo_twitter.png",
    photo_banner: "https://d1l6lhgof63zdh.cloudfront.net/twitter-office-cCc4SUHbqk.jpg"
  },
  {
    name: "Skyscanner",
    domain: "skyscanner.net",
    address: "Edinburgh",
    locations: ["London", "Edinburgh"],
    languages: ["English"],
    photo_logo: "https://mundoxdescubrir.com/wp-content/uploads/2019/02/logo-skyscanner-1.png",
    photo_banner: "https://pbs.twimg.com/media/Cb1KI7gUcAYYTjy.jpg"
  },
  {
    name: "Booking.com",
    domain: "booking.com",
    address: "Amsterdam",
    locations: ["Amsterdam", "London"],
    languages: ["English", "Dutch"],
    photo_logo: "https://www.vilacvetka.com/wp-content/uploads/2015/04/booking.com-logo-2.png",
    photo_banner: "https://assets.phenompeople.com/CareerConnectResources/BOOKUS/en_us/common/image_gallery/locations%20cover-1546603551068.jpg"
  },
  {
    name: "AirBnB",
    domain: "airbnb.com",
    address: "San Francisco",
    locations: ["Madrid", "London", "Berlin"],
    languages: ["English"],
    photo_logo: "http://www.brandemia.org/sites/default/files/sites/default/files/bnb_billboard_01-2000x1125.jpg",
    photo_banner: "https://images.adsttc.com/media/images/59ef/fef7/b22e/3819/9400/0018/newsletter/999_47.jpg?1508900596"
  },
  {
    name: "Microsoft Iberia",
    domain: "microsoft.com",
    address: "Barcelona",
    locations: ["Barcelona", "Madrid"],
    languages: ["English", "Spanish"],
    photo_logo: "http://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE2qVsJ?ver=3f74",
    photo_banner: "https://www.tmagazine.es/app/uploads/2017/06/oficina_microsoft_barcelona_03.jpg"
  },
  {
    name: "Yego",
    domain: "yego.es",
    address: "Barcelona",
    locations: ["Barcelona", "Valencia", "Madrid"],
    languages: ["Spanish"],
    photo_logo: "https://is3-ssl.mzstatic.com/image/thumb/Purple123/v4/c3/d6/03/c3d60344-cc7b-c6fd-fbc1-a564be66391b/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-85-220.png/1200x630wa.png",
    photo_banner: "https://estaticos.elperiodico.com/resources/jpg/4/2/motos-start-up-yego-1543576955924.jpg"
  },
  {
    name: "ThoughtWorks",
    domain: "thoughtworks.com",
    address: "London",
    locations: ["Barcelona", "New York", "Chicago", "Paris", "Berlin", "London", "Amsterdam", "Rome", "Vienna"],
    languages: ["English"],
    photo_logo: "https://sonarplusd.com/system/attached_images/21482/medium/ThoughtWorks-Alta.jpg?1519817056",
    photo_banner: "https://dynamic.thoughtworks.com/landing_pages/image-a72caa3b17c5fd3e7b195b588470ea5f.jpeg"
  },
  {
    name: "eCooltra",
    domain: "ecooltra.com",
    address: "Barcelona",
    locations: ["Barcelona"],
    languages: ["Spanish"],
    photo_logo: "https://canelapr.com/wp-content/uploads/2017/06/ecooltra-logo.jpg",
    photo_banner: "https://images.unsplash.com/photo-1510074377623-8cf13fb86c08?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80"
  },
  {
    name: "Revolut",
    domain: "revolut.com",
    address: "London",
    locations: ["London"],
    languages: ["English"],
    photo_logo: "https://upload.wikimedia.org/wikipedia/commons/c/c9/Logo_Revolut.png",
    photo_banner: "https://www.officelovin.com/wp-content/uploads/2018/10/revolut-office-london-8.jpg"
  },
  {
    name: "N26",
    domain: "n26.com",
    address: "Berlin",
    locations: ["Berlin", "Vienna", "Frankfurt"],
    languages: ["English", "German"],
    photo_logo: "http://fintechaustria.org/wp-content/uploads/2018/07/n26-logo.png",
    photo_banner: "https://i.pinimg.com/originals/3e/e7/59/3ee759fc1f91915612bee0bec1acfc5a.jpg"
  },
  {
    name: "Typeform",
    domain: "typeform.com",
    address: "Barcelona",
    locations: ["Barcelona"],
    languages: ["English", "Spanish"],
    photo_logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Typeform_Logo.svg/1200px-Typeform_Logo.svg.png",
    photo_banner: "https://www.indexventures.com/media/images/typeformnewoffice_GyBpo0d.original.jpegquality-60.png"
  },
  {
    name: "Marfeel",
    domain: "marfeel.com",
    address: "Amsterdam",
    locations: ["Barcelona", "Amsterdam"],
    languages: ["English", "Dutch"],
    photo_logo: "https://pbs.twimg.com/profile_images/1047789743335989248/a-QyWwKU_400x400.jpg",
    photo_banner: "http://filippopoli.com/wp-content/uploads/2018/09/06-arbeats-marfeel-office_pl_4092.jpg"
  },
  {
    name: "Cabify",
    domain: "cabify.com",
    address: "Madrid",
    locations: ["Madrid", "Barcelona"],
    languages: ["English", "Spanish"],
    photo_logo: "https://upload.wikimedia.org/wikipedia/commons/5/58/Cabify-logo-purple.png",
    photo_banner: "http://www.ilumina.pe/wp-content/uploads/2015/02/Cabify-3-1130x400.jpg"
  },
  {
    name: "Le Wagon",
    domain: "lewagon.com",
    address: "Paris",
    locations: ["Paris", "Barcelona", "Amsterdam", "Madrid", "Berlin", "Milan"],
    languages: ["English", "French"],
    photo_logo: "https://mk0mindspacemexmwc0q.kinstacdn.com/wp-content/uploads/sites/2/2017/03/white_logo_red_font.png",
    photo_banner: "https://res.cloudinary.com/wagon/image/upload/c_fill,q_auto,w_2880/v1574180426/fnfzqw8xiqfhctgmq9jf.webp"
  },
  {
    name: "Badi",
    domain: "badi.com",
    address: "Barcelona",
    locations: ["Barcelona"],
    languages: ["Spanish"],
    photo_logo: "https://media.licdn.com/dms/image/C4D0BAQG7h7FmPFXZTA/company-logo_200_200/0?e=2159024400&v=beta&t=UnYwVD5kc1F7ZJSx8ppGKgdxn4S1YMlO8xoyxT9QpXo",
    photo_banner: "https://media.licdn.com/dms/image/C4D1BAQGQ2wvKazVYvw/company-background_10000/0?e=2159024400&v=beta&t=Us_NRc8h8n6ohaWnzxsqJQrC_hDRkOZUCeYQdmGpS1M"
  },
]

@postings_list = [
  {
    field: "Information Technology",
    job_title: "Front-End Developer",
    experience: "Senior",
    contract_type: "Full-Time",
    salary_max: 50_000,
    description: "Ready to take your style to the next level? Looking for driven and ambitious senior designers."
  },
    {
    field: "Information Technology",
    job_title: "Front-End Developer",
    experience: "Senior",
    contract_type: "Part-Time",
    salary_max: 50_000,
    description: "Ready to take your style to the next level? Looking for driven and ambitious senior designers."
  },
    {
    field: "Information Technology",
    job_title: "Front-End Developer",
    experience: "Senior",
    contract_type: "Freelance",
    salary_max: 50_000,
    description: "Ready to take your style to the next level? Looking for driven and ambitious senior designers."
  },
  {
    field: "Information Technology",
    job_title: "Front-End Developer",
    experience: "Mid",
    contract_type: "Full-Time",
    salary_max: 30_000,
    description: "Think you've got style, huh? Then come show us what you've got! Looking for passionate and talented designers."
  },
  {
    field: "Information Technology",
    job_title: "Front-End Developer",
    experience: "Mid",
    contract_type: "Part-Time",
    salary_max: 30_000,
    description: "Think you've got style, huh? Then come show us what you've got! Looking for passionate and talented designers."
  },
  {
    field: "Information Technology",
    job_title: "Front-End Developer",
    experience: "Mid",
    contract_type: "Freelance",
    salary_max: 30_000,
    description: "Think you've got style, huh? Then come show us what you've got! Looking for passionate and talented designers."
  },
  {
    field: "Information Technology",
    job_title: "Front-End Developer",
    experience: "Junior",
    contract_type: "Full-Time",
    salary_max: 20_000,
    description: "Think you've got an eye for style? Show us your talent and we'll show you how to go pro."
  },
  {
    field: "Information Technology",
    job_title: "Front-End Developer",
    experience: "Junior",
    contract_type: "Part-Time",
    salary_max: 20_000,
    description: "Think you've got an eye for style? Show us your talent and we'll show you how to go pro."
  },
  {
    field: "Information Technology",
    job_title: "Front-End Developer",
    experience: "Junior",
    contract_type: "Freelance",
    salary_max: 20_000,
    description: "Think you've got an eye for style? Show us your talent and we'll show you how to go pro."
  },
  {
    field: "Information Technology",
    job_title: "Back-End Developer",
    experience: "Senior",
    contract_type: "Full-Time",
    salary_max: 70_000,
    description: "If you express your style with beautiful logic, we understand your art. Swipe to get in touch if you're a true MVC craftsman."
  },
  {
    field: "Information Technology",
    job_title: "Back-End Developer",
    experience: "Senior",
    contract_type: "Part-Time",
    salary_max: 70_000,
    description: "If you express your style with beautiful logic, we understand your art. Swipe to get in touch if you're a true MVC craftsman."
  },
  {
    field: "Information Technology",
    job_title: "Back-End Developer",
    experience: "Senior",
    contract_type: "Freelance",
    salary_max: 70_000,
    description: "If you express your style with beautiful logic, we understand your art. Swipe to get in touch if you're a true MVC craftsman."
  },
  {
    field: "Information Technology",
    job_title: "Back-End Developer",
    experience: "Mid",
    contract_type: "Full-Time",
    salary_max: 45_000,
    description: "If you express your style with beautiful logic, we understand your art. Swipe to get in touch if you're a true MVC craftsman."
  },
  {
    field: "Information Technology",
    job_title: "Back-End Developer",
    experience: "Mid",
    contract_type: "Part-Time",
    salary_max: 45_000,
    description: "If you express your style with beautiful logic, we understand your art. Swipe to get in touch if you're a true MVC craftsman."
  },
  {
    field: "Information Technology",
    job_title: "Back-End Developer",
    experience: "Mid",
    contract_type: "Freelance",
    salary_max: 45_000,
    description: "If you express your style with beautiful logic, we understand your art. Swipe to get in touch if you're a true MVC craftsman."
  },
  {
    field: "Information Technology",
    job_title: "Back-End Developer",
    experience: "Junior",
    contract_type: "Full-Time",
    salary_max: 25_000,
    description: "This is a job for the polymaths and the all-rounders. Swipe right to discover your inner renaissance dev..."
  },
  {
    field: "Information Technology",
    job_title: "Back-End Developer",
    experience: "Junior",
    contract_type: "Part-Time",
    salary_max: 25_000,
    description: "This is a job for the polymaths and the all-rounders. Swipe right to discover your inner renaissance dev..."
  },
  {
    field: "Information Technology",
    job_title: "Back-End Developer",
    experience: "Junior",
    contract_type: "Freelance",
    salary_max: 25_000,
    description: "This is a job for the polymaths and the all-rounders. Swipe right to discover your inner renaissance dev..."
  },
  {
    field: "Information Technology",
    job_title: "Full-Stack Developer",
    experience: "Senior",
    contract_type: "Full-Time",
    salary_max: 90_000,
    description: "This is a job for the polymaths and the all-rounders. Swipe right to discover your inner renaissance dev..."
  },
  {
    field: "Information Technology",
    job_title: "Full-Stack Developer",
    experience: "Senior",
    contract_type: "Part-Time",
    salary_max: 90_000,
    description: "This is a job for the polymaths and the all-rounders. Swipe right to discover your inner renaissance dev..."
  },
  {
    field: "Information Technology",
    job_title: "Full-Stack Developer",
    experience: "Senior",
    contract_type: "Freelance",
    salary_max: 90_000,
    description: "This is a job for the polymaths and the all-rounders. Swipe right to discover your inner renaissance dev..."
  },
  {
    field: "Information Technology",
    job_title: "Full-Stack Developer",
    experience: "Mid",
    contract_type: "Full-Time",
    salary_max: 50_000,
    description: "This is a job for the polymaths and the all-rounders. Swipe right to discover your inner renaissance dev..."
  },
  {
    field: "Information Technology",
    job_title: "Full-Stack Developer",
    experience: "Mid",
    contract_type: "Part-Time",
    salary_max: 50_000,
    description: "This is a job for the polymaths and the all-rounders. Swipe right to discover your inner renaissance dev..."
  },
  {
    field: "Information Technology",
    job_title: "Full-Stack Developer",
    experience: "Mid",
    contract_type: "Freelance",
    salary_max: 50_000,
    description: "This is a job for the polymaths and the all-rounders. Swipe right to discover your inner renaissance dev..."
  },
  {
    field: "Information Technology",
    job_title: "Full-Stack Developer",
    experience: "Junior",
    contract_type: "Full-Time",
    salary_max: 30_000,
    description: "This is a job for the polymaths and the all-rounders. Swipe right to discover your inner renaissance dev..."
  },
  {
    field: "Information Technology",
    job_title: "Full-Stack Developer",
    experience: "Junior",
    contract_type: "Part-Time",
    salary_max: 30_000,
    description: "This is a job for the polymaths and the all-rounders. Swipe right to discover your inner renaissance dev..."
  },
  {
    field: "Information Technology",
    job_title: "Full-Stack Developer",
    experience: "Junior",
    contract_type: "Freelance",
    salary_max: 30_000,
    description: "This is a job for the polymaths and the all-rounders. Swipe right to discover your inner renaissance dev..."
  }
]

@profiles_list = [
  {
    field: "Information Technology",
    job_title: "Front-End Developer",
    experience: "Senior",
    contract_type: "",
    salary_min: 40_000,
    salary_max: 60_000,
    description: "I'm ready to take my style to the next level. Looking for driven and ambitious companies."
  },
  {
    field: "Information Technology",
    job_title: "Front-End Developer",
    experience: "Mid",
    contract_type: "",
    salary_min: 25_000,
    salary_max: 35_000,
    description: "I'm ready to take my style to the next level. Looking for driven and ambitious companies."
  },
  {
    field: "Information Technology",
    job_title: "Front-End Developer",
    experience: "Junior",
    contract_type: "",
    salary_min: 15_000,
    salary_max: 25_000,
    description: "I'm ready to take my style to the next level. Looking for driven and ambitious companies."
  },
  {
    field: "Information Technology",
    job_title: "Back-End Developer",
    experience: "Senior",
    contract_type: "",
    salary_min: 65_000,
    salary_max: 80_000,
    description: "I express my style with beautiful logic, and you understand my art. Swipe to get in touch with a true MVC craftsman."
  },
  {
    field: "Information Technology",
    job_title: "Back-End Developer",
    experience: "Mid",
    contract_type: "",
    salary_min: 35_000,
    salary_max: 55_000,
    description: "I express my style with beautiful logic, and want to better understand my art. Swipe to get in touch with a rising MVC star."
  },
  {
    field: "Information Technology",
    job_title: "Back-End Developer",
    experience: "Junior",
    contract_type: "",
    salary_min: 20_000,
    salary_max: 30_000,
    description: "I want to express my style with beautiful logic and understand this art. Swipe to get in touch with an aspiring MVC craftsman."
  },
  {
    field: "Information Technology",
    job_title: "Full-Stack Developer",
    experience: "Senior",
    contract_type: "",
    salary_min: 80_000,
    salary_max: 100_000,
    description: "Behold the polymath... A master of all trades - a jack of none. Swipe right to meet a real renaissance dev..."
  },
  {
    field: "Information Technology",
    job_title: "Full-Stack Developer",
    experience: "Mid",
    contract_type: "",
    salary_min: 40_000,
    salary_max: 60_000,
    description: "Behold the polymath... A master of all trades - a jack of none. Swipe right to meet a real renaissance dev..."
  },
  {
    field: "Information Technology",
    job_title: "Full-Stack Developer",
    experience: "Junior",
    contract_type: "",
    salary_min: 25_000,
    salary_max: 35_000,
    description: "Behold the polymath... A master of all trades - a jack of none. Swipe right to meet a real renaissance dev..."
  }
]

@domains = ["gmail.com", "hotmail.com", "outlook.com"]
@contract_types = ["Full-Time", "Part-Time", "Freelance"]
@experience = ["Junior", "Mid", "Senior"]
@languages = ["English", "French", "Spanish", "German", "Italian"]
@locations = ["Edinburgh", "London", "Amsterdam", "Barcelona", "Madrid", "Berlin", "Paris"]

# REFACTORED METHODS

def set_user_email_with_(domain)
  @email = "#{@selected_user[:first_name].downcase.gsub(/\s+/, "")}.#{@selected_user[:last_name].downcase.gsub(/\s+/, "")}@#{domain}"
end

def select_user_company(x, y)
  @selected_company_index = @shuffled_companies_list.length - 1
  @selected_company = @shuffled_companies_list[@selected_company_index]
  @shuffled_companies_list.delete_at(@selected_company_index) if rand(x) < y # probabilistic variation of employers per company
  set_user_email_with_(@selected_company[:domain])
end

def save_new_user
  if @new_user.valid?
    @new_user.save # saving new users
  else
    p @new_user.errors.messages
  end
end

def create_new_user_with_(company_id)
  @new_user = User.new(
    email: @email,
    password: "12341234",
    first_name: @selected_user[:first_name],
    last_name: @selected_user[:last_name],
    company_id: company_id,
    facebook_picture_url: @selected_user[:photo]
    )
  # save_new_user
end

def create_new_company
  @new_company = Company.new(
    name: @selected_company[:name],
    address: @selected_company[:address],
    logo: @selected_company[:photo_logo])

  if @new_company.valid?
    @new_company.save # saving new company
  else
    p @new_company.errors.messages
  end
end

def create_postings_from_company(n_postings)
  @shuffled_postings_list = @postings_list.shuffle # Shuffle postings order - create random posts

  n_postings.times do # TODO: Create rand(n_postings) number of postings - selected from shuffled_postings_list

    @selected_posting_index = @shuffled_postings_list.length - 1 # index of last element of shuffled postings array
    @selected_posting = @shuffled_postings_list[@selected_posting_index] # selects random post from shuffled array by this index
    @shuffled_postings_list.delete_at(@selected_posting_index) # deletes selected post from shuffled array

    @new_posting = Posting.new(
      field: @selected_posting[:field],
      job_title: @selected_posting[:job_title],
      contract_types: [@selected_posting[:contract_type]],
      experience: @selected_posting[:experience],
      languages: @selected_company[:languages],
      locations: @selected_company[:locations],
      description: @selected_posting[:description],
      salary_max: @selected_posting[:salary_max],
      company_id: @new_company.id,
      photo: @selected_company[:photo_banner])

    if @new_posting.valid?
      @new_posting.save # saving new company
    else
      p @new_posting.errors.messages
    end
  end
end

def create_profiles_from_user(n_profiles)
  @shuffled_profiles_list = @profiles_list.shuffle # Shuffle postings order - create random posts

  n_profiles.times do # TODO: Create rand(n_postings) number of postings - selected from shuffled_postings_list

    @selected_profile_index = @shuffled_profiles_list.length - 1 # index of last element of shuffled postings array
    @selected_profile = @shuffled_profiles_list[@selected_profile_index] # selects random post from shuffled array by this index
    @shuffled_profiles_list.delete_at(@selected_profile_index) # deletes selected post from shuffled array

    @new_profile = Profile.new(
      field: @selected_profile[:field],
      job_title: @selected_profile[:job_title],
      contract_types: @contract_types.sample(rand(1..@contract_types.length)),
      experience: @selected_user[:experience],
      languages: @selected_user[:languages],
      locations: @selected_user[:locations],
      description: @selected_profile[:description],
      salary_min: @selected_profile[:salary_min],
      # salary_max: @selected_profile[:salary_max],
      user_id: User.last.id,
      status: 'active'
      )

    if @new_profile.valid?
      @new_profile.save # saving new company
    else
      p @new_profile.errors.messages
    end
  end
end

def create_profiles_from_demo_user(n_profiles)
  @shuffled_profiles_list = @profiles_list.shuffle # Shuffle postings order - create random posts

  n_profiles.times do # TODO: Create rand(n_postings) number of postings - selected from shuffled_postings_list

    @selected_profile_index = @shuffled_profiles_list.length - 1 # index of last element of shuffled postings array
    @selected_profile = @shuffled_profiles_list[@selected_profile_index] # selects random post from shuffled array by this index
    @shuffled_profiles_list.delete_at(@selected_profile_index) # deletes selected post from shuffled array

    @new_profile = Profile.new(
      field: @selected_profile[:field],
      job_title: @selected_profile[:job_title],
      contract_types: @contract_types,
      experience: @selected_profile[:experience],
      languages: @languages,
      locations: @locations,
      description: @selected_profile[:description],
      salary_min: @selected_profile[:salary_min],
      # salary_max: @selected_profile[:salary_max],
      user_id: User.last.id,
      status: 'active'
      )

    if @new_profile.valid?
      @new_profile.save # saving new company
    else
      p @new_profile.errors.messages
    end
  end
end

def create_users_with_companies(n_users)
  @shuffled_users_list = @users_list.shuffle
  @shuffled_companies_list = @companies_list.shuffle

  n_users.times do
    @selected_user_index = @shuffled_users_list.length - 1
    @selected_user = @shuffled_users_list[@selected_user_index]
    @shuffled_users_list.delete_at(@selected_user_index)

    if @shuffled_companies_list.length > 0 # new users will be associated to company if there are still companies available to be allocated (recruiters)
      select_user_company(1, 1)
      @existing_company = Company.find_by(name: @selected_company[:name])

      if @existing_company # if company exists user will be associated with it
        create_new_user_with_(@existing_company.id)
      else # if company does not exist, a new company will be created
        create_new_company
        create_new_user_with_(@new_company.id)
        create_postings_from_company(rand(1..(@postings_list.count))) # unless Posting.where(company_id: @new_company.id).count > @postings_list.length
      end

    else # remaining new users will not be associated with a company (applicants)
      set_user_email_with_(@domains.sample)
      create_new_user_with_(nil)
    end

    save_new_user

    unless User.last.company_id
      @new_user[experience: @experience.shuffle]
      create_profiles_from_user(rand(1..4))
    end
  end
end

def create_demo_users
  # @new_user = User.new(
  #   email: "dan.rod93@gmail.com",
  #   password: "12341234",
  #   first_name: "Daniel",
  #   last_name: "Rodriguez",
  #   company_id: nil)
  # save_new_user
  # create_profiles_from_demo_user(5)
  @new_user = User.new(
    email: "marti15@hotmail.com",
    password: "12341234",
    first_name: "Martin",#
    last_name: "Potié",
    company_id: nil)
  save_new_user
  @new_user = User.new(
    email: "kevin@liebholz.eu",
    password: "12341234",
    first_name: "Kevin",#
    last_name: "Liebholz",
    company_id: nil)
  save_new_user
  @new_user = User.new(
    email: "angustatchell@gmail.com",
    password: "12341234",
    first_name: "Angus",#
    last_name: "Tatchell",
    company_id: nil)
  save_new_user
end

def clear_database
  puts "CLEARING DATABASE:"
  puts " "

  puts "Destroying Messages..."
  puts "Destroyed #{Message.all.count} Messages."
  Message.destroy_all
  puts " "

  puts "Destroying Matches..."
  puts "Destroyed #{Match.all.count} Matches."
  Match.destroy_all
  puts " "

  puts "Destroying Profiles..."
  puts "Destroyed #{Profile.all.count} Profiles."
  Profile.destroy_all
  puts " "

  puts "Destroying Postings..."
  puts "Destroyed #{Posting.all.count} Postings."
  Posting.destroy_all
  puts " "

  puts "Destroying Users..."
  puts "Destroyed #{User.all.count} Users."
  User.destroy_all
  puts " "

  puts "Destroying Companies..."
  puts "Destroyed #{Company.all.count} Companies."
  Company.destroy_all
  puts " "


  puts "DATABASE CLEARED."
  puts " "
end

def seed_database(clean)
  unless clean.nil?
    clear_database
  end
    puts "SEEDING DATABASE:"
    puts " "

    puts "Seeding Users, Companies, Postings & Profiles..."
    puts " "

    create_users_with_companies(@users_list.length)
    create_demo_users
    seekers = User.where(company_id: nil)
    postings = Posting.all.sort
    companies = Company.all

    puts " "
    puts "SEEDED #{User.count} Users"
    puts "SEEDED #{Company.count} Companies"
    puts " "
    puts "SEEDED #{seekers.count} Seekers"
    puts "SEEDED #{User.count - seekers.count} Recruiters"
    puts " "
    puts "SEEDED #{Posting.count} Postings"
    puts "SEEDED #{Profile.count} Profiles"
    puts " "
    puts "SEEKER ACCOUNTS:"

    seekers.each do |seeker|
      seeker_profiles = Profile.where(user_id: seeker.id)
      puts "#{seeker_profiles.count} profile(s): EXP (#{Profile.where(user_id: seeker.id).experience}) - #{seeker.email}"
    end

    puts " "
    puts "COMPANY POSTS:"

    companies.each do |company|
      puts "#{Posting.where(company_id: company.id).count} posting(s) - #{company.name}"
    end

    # puts " "
    # puts "Seeding Matches..."
    # puts "SEEDED #{Match.count} Matches"
end

seed_database("clean")

