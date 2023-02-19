create table if not exists "party" (
  "id" integer not null,
  "partyid" varchar(11) not null,
  "partyname" varchar(11) not null,
  primary key ("id")
)
insert into "party" ("id", "partyid", "partyname")
values (
  1,
  'PDP',
  'PDP'
), (
  2,
  'DPP',
  'DPP'
), (
  3,
  'ACN',
  'ACN'
), (
  4,
  'PPA',
  'PPA'
), (
  5,
  'CDC',
  'CDC'
), (
  6,
  'JP',
  'JP'
), (
  7,
  'ANPP',
  'ANPP'
), (
  8,
  'LABOUR',
  'LABOUR'
), (
  9,
  'CPP',
  'CPP'
);


create table if not exists "states" (
  "state_id" integer not null,
  "state_name" varchar(50) not null,
  primary key ("state_id")
)
insert into "states" ("state_id", "state_name")
values (
  1,
  'Abuja'
), (
  2,
  'Abia'
), (
  3,
  'Anambra'
), (
  4,
  'Akwa Ibom'
), (
  5,
  'Adamawa'
), (
  6,
  'Bauchi'
), (
  7,
  'Bayelsa'
), (
  8,
  'Benue'
), (
  9,
  'Borno'
), (
  10,
  'Cross River'
), (
  12,
  'Ebonyi'
), (
  13,
  'Edo'
), (
  14,
  'Ekiti'
), (
  15,
  'Enugu'
), (
  16,
  'Gombe'
), (
  17,
  'Imo'
), (
  18,
  'Jigawa'
), (
  19,
  'Kaduna'
), (
  20,
  'Kano'
), (
  21,
  'Katsina'
), (
  22,
  'Kebbi'
), (
  23,
  'Kogi'
), (
  24,
  'Kwara'
), (
  25,
  'Delta'
), (
  26,
  'Nasarawa'
), (
  27,
  'Niger'
), (
  28,
  'Ogun'
), (
  29,
  'Ondo'
), (
  30,
  'Osun'
), (
  31,
  'Oyo'
), (
  32,
  'Plateau'
), (
  33,
  'Rivers'
), (
  34,
  'Sokoto'
), (
  35,
  'Taraba'
), (
  36,
  'Yobe'
), (
  37,
  'Zamfara'
), (
  251,
  'Lagos'
);


create table if not exists "lga" (
  "uniqueid" integer not null,
  "lga_id" integer not null,
  "lga_name" varchar(50) not null,
  "state_id" integer not null,
  "lga_description" text,
  "entered_by_user" varchar(50) not null,
  "date_entered" timestamp not null,
  "user_ip_address" varchar(50) not null,
  primary key ("uniqueid")
)
insert into "lga" (
  "uniqueid",
  "lga_id",
  "lga_name",
  "state_id",
  "lga_description",
  "entered_by_user",
  "date_entered",
  "user_ip_address"
)
values (
  1,
  1,
  'Aniocha North',
  25,
  'Aniocha North',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.2'
), (
  2,
  2,
  'Aniocha - South',
  25,
  'Aniocha - South',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  3,
  5,
  'Ethiope East',
  25,
  'Ethiope East',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.5'
), (
  4,
  6,
  'Ethiope West',
  25,
  'Ethiope West',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.6'
), (
  5,
  7,
  'Ika North - East',
  25,
  'Ika North - East',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.8'
), (
  6,
  8,
  'Ika - South',
  25,
  'Ika - South',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.7'
), (
  7,
  9,
  'Isoko North',
  25,
  'Isoko North',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.9'
), (
  8,
  10,
  'Isoko South',
  25,
  'Isoko South',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.10'
), (
  9,
  11,
  'Ndokwa East',
  25,
  'Ndokwa East',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.11'
), (
  10,
  12,
  'Ndokwa West',
  25,
  'Ndokwa West',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.12'
), (
  11,
  13,
  'Okpe',
  25,
  'Okpe',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.13'
), (
  12,
  14,
  'Oshimili - North',
  25,
  'Oshimili - North',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.14'
), (
  13,
  15,
  'Oshimili - South',
  25,
  'Oshimili - South',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.15'
), (
  14,
  16,
  'Patani',
  25,
  'Patani',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.16'
), (
  15,
  17,
  'Sapele',
  25,
  'Sapele',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.17'
), (
  16,
  18,
  'Udu',
  25,
  'Udu',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.18'
), (
  17,
  19,
  'Ughelli North',
  25,
  'Ughelli North',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.19'
), (
  18,
  20,
  'Ughelli South',
  25,
  'Ughelli South',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.20'
), (
  19,
  21,
  'Ukwuani',
  25,
  'Ukwuani',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.21'
), (
  20,
  22,
  'Uvwie',
  25,
  'Uvwie',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.22'
), (
  21,
  31,
  'Bomadi',
  25,
  'Bomadi',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.3'
), (
  22,
  32,
  'Burutu',
  25,
  'Burutu',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.4'
), (
  23,
  33,
  'Warri North',
  25,
  'Warri North',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.23'
), (
  24,
  34,
  'Warri South',
  25,
  'Warri South',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.24'
), (
  25,
  35,
  'Warri South West',
  25,
  'Warri South West',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.25'
);


create table if not exists "ward" (
  "uniqueid" integer not null,
  "ward_id" integer not null,
  "ward_name" varchar(50) not null,
  "lga_id" integer not null,
  "ward_description" text,
  "entered_by_user" varchar(50) not null,
  "date_entered" timestamp not null,
  "user_ip_address" varchar(50) not null,
  primary key ("uniqueid")
)
insert into "ward" (
  "uniqueid",
  "ward_id",
  "ward_name",
  "lga_id",
  "ward_description",
  "entered_by_user",
  "date_entered",
  "user_ip_address"
)
values (
  1,
  2,
  'Aba - Unor',
  2,
  'Aba - Unor',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  2,
  8,
  'Ejeme',
  2,
  'Ejeme',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  3,
  9,
  'Isheagu - Ewulu',
  2,
  'Isheagu - Ewulu',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  4,
  7,
  'Nsukwa',
  2,
  'Nsukwa',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  5,
  2,
  'Ogwashi - Uku I',
  2,
  'Ogwashi - Uku I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  6,
  3,
  'Ogwashi - Uku Ii',
  2,
  'Ogwashi - Uku Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  7,
  1,
  'Ogwashi - Uku Village',
  2,
  'Ogwashi - Uku Village',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  8,
  4,
  'Ubulu - Uku I',
  2,
  'Ubulu - Uku I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  9,
  5,
  'Ubulu - Uku Ii',
  2,
  'Ubulu - Uku Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  10,
  6,
  'Ubulu - Unor',
  2,
  'Ubulu - Unor',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  11,
  11,
  'Ubulu Okiti',
  2,
  'Ubulu Okiti',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  12,
  10,
  'Ezi',
  1,
  'Ezi',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  13,
  8,
  'Idumuje - Unor',
  1,
  'Idumuje - Unor',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  14,
  5,
  'Issele - Azagba',
  1,
  'Issele - Azagba',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  15,
  6,
  'Issele Uku I',
  1,
  'Issele Uku I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  16,
  7,
  'Issele Uku Ii',
  1,
  'Issele Uku Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  17,
  1,
  'Obior',
  1,
  'Obior',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  18,
  3,
  'Obomkpa',
  1,
  'Obomkpa',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  19,
  4,
  'Onicha - Olona',
  1,
  'Onicha - Olona',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  20,
  2,
  'Onicha Ugbo',
  1,
  'Onicha Ugbo',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  21,
  9,
  'Ukwu - Nzu',
  1,
  'Ukwu - Nzu',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  22,
  0,
  'Akugbene',
  31,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  23,
  0,
  'Akugbene Ii',
  31,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  24,
  0,
  'Akugbene Iii',
  31,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  25,
  0,
  'Bomadi',
  31,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  26,
  0,
  'Kolafiogbene / Ekametagbene',
  31,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  27,
  0,
  'Kpakiama',
  31,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  28,
  0,
  'Ogbeinama / Okoloba',
  31,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  29,
  0,
  'Ogo - Eze',
  31,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  30,
  0,
  'Ogriagene',
  31,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  31,
  0,
  'Syama',
  31,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  32,
  0,
  'Bolou - Ndoro',
  32,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  33,
  0,
  'Ngbilebiri',
  32,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  34,
  0,
  'Ngbilebiri Ii',
  32,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  35,
  0,
  'Obotebe',
  32,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  36,
  0,
  'Ogbolubiri',
  32,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  37,
  0,
  'Ogulagha',
  32,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  38,
  0,
  'Seimbiri',
  32,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  39,
  0,
  'Tamigbe',
  32,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  40,
  0,
  'Torugbene',
  32,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  41,
  0,
  'Tuomo',
  32,
  'Akugbene',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  42,
  1,
  'Abraka I',
  5,
  'Abraka I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  43,
  2,
  'Abraka Ii',
  5,
  'Abraka Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  44,
  3,
  'Abraka Iii',
  5,
  'Abraka Iii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  45,
  4,
  'Agbon I',
  5,
  'Agbon I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  46,
  5,
  'Agbon Ii',
  5,
  'Agbon Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  47,
  6,
  'Agbon Iii',
  5,
  'Agbon Iii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  48,
  7,
  'Agbon Iv',
  5,
  'Agbon Iv',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  49,
  8,
  'Agbon V',
  5,
  'Agbon V',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  50,
  9,
  'Agbon Vi',
  5,
  'Agbon Vi',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  51,
  10,
  'Agbon Vii',
  5,
  'Agbon Vii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  52,
  11,
  'Agbon Viii',
  5,
  'Agbon Viii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  53,
  3,
  'Jesse I',
  6,
  'Jesse I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  54,
  4,
  'Jesse Ii',
  6,
  'Jesse Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  55,
  5,
  'Jesse Iii',
  6,
  'Jesse Iii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  56,
  6,
  'Jesse Iv',
  6,
  'Jesse Iv',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  57,
  1,
  'Mosogar I',
  6,
  'Mosogar I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  58,
  2,
  'Mosogar Ii',
  6,
  'Mosogar Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  59,
  7,
  'Oghara I',
  6,
  'Oghara I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  60,
  8,
  'Oghara Ii',
  6,
  'Oghara Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  61,
  9,
  'Oghara Iii',
  6,
  'Oghara Iii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  62,
  10,
  'Oghara Iv',
  6,
  'Oghara Iv',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  63,
  11,
  'Oghara V',
  6,
  'Oghara V',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  64,
  10,
  'Abavo I',
  8,
  'Abavo I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  65,
  11,
  'Abavo Ii',
  8,
  'Abavo Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  66,
  12,
  'Abavo Iii',
  8,
  'Abavo Iii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  67,
  1,
  'Agbor Town I',
  8,
  'Agbor Town I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  68,
  2,
  'Agbor Town Ii',
  8,
  'Agbor Town Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  69,
  7,
  'Boji - Boji I',
  8,
  'Boji - Boji I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  70,
  8,
  'Boji - Boji Ii',
  8,
  'Boji - Boji Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  71,
  9,
  'Boji - Boji Iii',
  8,
  'Boji - Boji Iii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  72,
  5,
  'Ekuku - Agbor',
  8,
  'Ekuku - Agbor',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  73,
  4,
  'Ihiuiyase I',
  8,
  'Ihiuiyase I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  74,
  6,
  'Ihuiyase Ii',
  8,
  'Ihuiyase Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  75,
  3,
  'Ihuozomor ( Ozanogogo Alisimie )',
  8,
  'Ihuozomor ( Ozanogogo Alisimie )',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  76,
  7,
  'Akumazi',
  7,
  'Akumazi',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  77,
  10,
  'Idumuesah',
  7,
  'Idumuesah',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  78,
  8,
  'Igbodo',
  7,
  'Igbodo',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  79,
  12,
  'Mbiri',
  7,
  'Mbiri',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  80,
  14,
  'Otolokpo',
  7,
  'Otolokpo',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  81,
  5,
  'Owa V',
  7,
  'Owa V',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  82,
  6,
  'Owa Vi',
  7,
  'Owa Vi',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  83,
  1,
  'Owa I',
  7,
  'Owa I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  84,
  2,
  'Owa Ii',
  7,
  'Owa Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  85,
  3,
  'Owa Iii',
  7,
  'Owa Iii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  86,
  4,
  'Owa Iv',
  7,
  'Owa Iv',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  87,
  11,
  'Umunede',
  7,
  'Umunede',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  88,
  13,
  'Ute - Ogbeje',
  7,
  'Ute - Ogbeje',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  89,
  9,
  'Ute - Okpu',
  7,
  'Ute - Okpu',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  90,
  3,
  'Ellu',
  9,
  'Ellu',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  91,
  4,
  'Emevor',
  9,
  'Emevor',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  92,
  5,
  'Iluelogbo',
  9,
  'Iluelogbo',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  93,
  1,
  'Iyede I',
  9,
  'Iyede I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  94,
  2,
  'Iyede Ii',
  9,
  'Iyede Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  95,
  8,
  'Okpe - Isoko',
  9,
  'Okpe - Isoko',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  96,
  13,
  'Otibio',
  9,
  'Otibio',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  97,
  7,
  'Ovrode',
  9,
  'Ovrode',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  98,
  6,
  'Owhe / Akiehwe',
  9,
  'Owhe / Akiehwe',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  99,
  12,
  'Oyede',
  9,
  'Oyede',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  100,
  9,
  'Ozoro I',
  9,
  'Ozoro I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  101,
  10,
  'Ozoro Ii',
  9,
  'Ozoro Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  102,
  11,
  'Ozoro Iii',
  9,
  'Ozoro Iii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  103,
  3,
  'Aviara',
  10,
  'Aviara',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  104,
  5,
  'Emede',
  10,
  'Emede',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  105,
  9,
  'Enhwe / Okpolo',
  10,
  'Enhwe / Okpolo',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  106,
  8,
  'Erowa / Umeh',
  10,
  'Erowa / Umeh',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  107,
  7,
  'Igbide',
  10,
  'Igbide',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  108,
  11,
  'Irri Ii',
  10,
  'Irri Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  109,
  10,
  'Irri I',
  10,
  'Irri I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  110,
  1,
  'Oleh I',
  10,
  'Oleh I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  111,
  2,
  'Oleh Ii',
  10,
  'Oleh Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  112,
  6,
  'Olomoro',
  10,
  'Olomoro',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  113,
  4,
  'Uzere',
  10,
  'Uzere',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  114,
  3,
  'Abarra / Inyi / Onuaboh',
  11,
  'Abarra / Inyi / Onuaboh',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  115,
  5,
  'Aboh / Akarrai',
  11,
  'Aboh / Akarrai',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  116,
  2,
  'Afor / Obikwele',
  11,
  'Afor / Obikwele',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  117,
  7,
  'Ase',
  11,
  'Ase',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  118,
  10,
  'Ashaka',
  11,
  'Ashaka',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  119,
  8,
  'Ibedeni',
  11,
  'Ibedeni',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  120,
  9,
  'Ibrede / Igbuku / Onogbokor',
  11,
  'Ibrede / Igbuku / Onogbokor',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  121,
  4,
  'Okpai / Utchi / Beneku',
  11,
  'Okpai / Utchi / Beneku',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  122,
  6,
  'Onyia / Adiai / Otuoku / Umuolu',
  11,
  'Onyia / Adiai / Otuoku / Umuolu',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  123,
  1,
  'Ossissa',
  11,
  'Ossissa',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  124,
  9,
  'Abbi Ii',
  12,
  'Abbi Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  125,
  8,
  'Abbi I',
  12,
  'Abbi I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  126,
  10,
  'Emu',
  12,
  'Emu',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  127,
  6,
  'Ogume I',
  12,
  'Ogume I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  128,
  7,
  'Ogume Ii',
  12,
  'Ogume Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  129,
  5,
  'Onicha - Ukwani',
  12,
  'Onicha - Ukwani',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  130,
  1,
  'Utagba Ogbe',
  12,
  'Utagba Ogbe',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  131,
  2,
  'Utagba Uno I',
  12,
  'Utagba Uno I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  132,
  3,
  'Utagba Uno Ii',
  12,
  'Utagba Uno Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  133,
  4,
  'Utagba Uno Iii',
  12,
  'Utagba Uno Iii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  134,
  5,
  'Aghalokpe',
  13,
  'Aghalokpe',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  135,
  6,
  'Aragba Town',
  13,
  'Aragba Town',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  136,
  7,
  'Mereje I',
  13,
  'Mereje I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  137,
  8,
  'Mereje Ii',
  13,
  'Mereje Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  138,
  9,
  'Mereje Iii',
  13,
  'Mereje Iii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  139,
  3,
  'Oha I',
  13,
  'Oha I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  140,
  4,
  'Oha Ii',
  13,
  'Oha Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  141,
  1,
  'Orerokpe',
  13,
  'Orerokpe',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  142,
  2,
  'Oviri - Okpe',
  13,
  'Oviri - Okpe',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  143,
  10,
  'Ughoton',
  13,
  'Ughoton',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  144,
  1,
  'Akwukwu',
  14,
  'Akwukwu',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  145,
  2,
  'Ebu',
  14,
  'Ebu',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  146,
  4,
  'Ibusa I',
  14,
  'Ibusa I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  147,
  5,
  'Ibusa Ii',
  14,
  'Ibusa Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  148,
  6,
  'Ibusa Iii',
  14,
  'Ibusa Iii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  149,
  7,
  'Ibusa Iv',
  14,
  'Ibusa Iv',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  150,
  8,
  'Ibusa V',
  14,
  'Ibusa V',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  151,
  3,
  'Illah',
  14,
  'Illah',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  152,
  9,
  'Okpanam',
  14,
  'Okpanam',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  153,
  10,
  'Ukala',
  14,
  'Ukala',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  154,
  7,
  'Agu',
  15,
  'Agu',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  155,
  2,
  'Anala - Amakom',
  15,
  'Anala - Amakom',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  156,
  10,
  'Cable Point I',
  15,
  'Cable Point I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  157,
  11,
  'Cable Point Ii',
  15,
  'Cable Point Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  158,
  1,
  'Ogbele / Akpako',
  15,
  'Ogbele / Akpako',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  159,
  3,
  'Okwe',
  15,
  'Okwe',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  160,
  7,
  'Ugbomanta Quarters',
  15,
  'Ugbomanta Quarters',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  161,
  5,
  'Umuaji',
  15,
  'Umuaji',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  162,
  4,
  'Umuezei',
  15,
  'Umuezei',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  163,
  6,
  'Umuonaje',
  15,
  'Umuonaje',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  164,
  9,
  'West End',
  15,
  'West End',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  165,
  1,
  'Abari',
  16,
  'Abari',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  166,
  4,
  'Agoloma',
  16,
  'Agoloma',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  167,
  8,
  'Bolou - Angiama',
  16,
  'Bolou - Angiama',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  168,
  10,
  'Odorubu / Adobu / Bolou Apelebri',
  16,
  'Odorubu / Adobu / Bolou Apelebri',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  169,
  5,
  'Patani Ii',
  16,
  'Patani Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  170,
  6,
  'Patani Iii',
  16,
  'Patani Iii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  171,
  2,
  'Patani I',
  16,
  'Patani I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  172,
  3,
  'Taware / Kolowara Aven',
  16,
  'Taware / Kolowara Aven',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  173,
  7,
  'Toru - Angiama',
  16,
  'Toru - Angiama',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  174,
  9,
  'Uduophori',
  16,
  'Uduophori',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  175,
  9,
  'Amuokpe',
  17,
  'Amuokpe',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  176,
  3,
  'Sapele Urban Iii',
  17,
  'Sapele Urban Iii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  177,
  4,
  'Sapele Urban Iv',
  17,
  'Sapele Urban Iv',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  178,
  5,
  'Sapele Urban V',
  17,
  'Sapele Urban V',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  179,
  6,
  'Sapele Urban Vi',
  17,
  'Sapele Urban Vi',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  180,
  7,
  'Sapele Urban Vii',
  17,
  'Sapele Urban Vii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  181,
  8,
  'Sapele Urban Viii',
  17,
  'Sapele Urban Viii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  182,
  1,
  'Sapele Urban I',
  17,
  'Sapele Urban I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  183,
  2,
  'Sapele Urban Ii',
  17,
  'Sapele Urban Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  184,
  10,
  'Aladja',
  18,
  'Aladja',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  185,
  6,
  'Ekete',
  18,
  'Ekete',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  186,
  5,
  'Opete / Assagba / Edjophe',
  18,
  'Opete / Assagba / Edjophe',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  187,
  9,
  'Orhuwerun',
  18,
  'Orhuwerun',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  188,
  7,
  'Ovwian I',
  18,
  'Ovwian I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  189,
  8,
  'Ovwian Ii',
  18,
  'Ovwian Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  190,
  1,
  'Udu I',
  18,
  'Udu I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  191,
  2,
  'Udu Ii',
  18,
  'Udu Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  192,
  3,
  'Udu Iii',
  18,
  'Udu Iii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  193,
  4,
  'Udu Iv',
  18,
  'Udu Iv',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  194,
  1,
  'Agbarha',
  19,
  'Agbarha',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  195,
  10,
  'Agbarho I',
  19,
  'Agbarho I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  196,
  11,
  'Agbarho Ii',
  19,
  'Agbarho Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  197,
  8,
  'Evwreni',
  19,
  'Evwreni',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  198,
  2,
  'Ogor',
  19,
  'Ogor',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  199,
  3,
  'Orogun I',
  19,
  'Orogun I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  200,
  4,
  'Orogun Ii',
  19,
  'Orogun Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  201,
  5,
  'Ughelli I',
  19,
  'Ughelli I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  202,
  6,
  'Ughelli Ii',
  19,
  'Ughelli Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  203,
  7,
  'Ughelli Iii',
  19,
  'Ughelli Iii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  204,
  9,
  'Uwheru',
  19,
  'Uwheru',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  205,
  6,
  'Effurun - Otor',
  20,
  'Effurun - Otor',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  206,
  7,
  'Ekakpamre',
  20,
  'Ekakpamre',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  207,
  8,
  'Jeremi I',
  20,
  'Jeremi I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  208,
  9,
  'Jeremi Ii',
  20,
  'Jeremi Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  209,
  10,
  'Jeremi Iii',
  20,
  'Jeremi Iii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  210,
  4,
  'Olomu I',
  20,
  'Olomu I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  211,
  5,
  'Olomu Ii',
  20,
  'Olomu Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  212,
  2,
  'Akoku',
  21,
  'Akoku',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  213,
  6,
  'Amai',
  21,
  'Amai',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  214,
  3,
  'Ebedei',
  21,
  'Ebedei',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  215,
  5,
  'Eziokpor',
  21,
  'Eziokpor',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  216,
  6,
  'Ezionum',
  21,
  'Ezionum',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  217,
  9,
  'Obiaruku I',
  21,
  'Obiaruku I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  218,
  10,
  'Obiaruku Ii',
  21,
  'Obiaruku Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  219,
  8,
  'Umuebu',
  21,
  'Umuebu',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  220,
  4,
  'Umukwata',
  21,
  'Umukwata',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  221,
  1,
  'Umutu',
  21,
  'Umutu',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  222,
  8,
  'Army Barracks Area',
  22,
  'Army Barracks Area',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  223,
  1,
  'Effurun I',
  22,
  'Effurun I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  224,
  2,
  'Effurun Ii',
  22,
  'Effurun Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  225,
  9,
  'Ekpan I',
  22,
  'Ekpan I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  226,
  12,
  'Ekpan Ii',
  22,
  'Ekpan Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  227,
  3,
  'Enerhen I',
  22,
  'Enerhen I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  228,
  4,
  'Enerhen Ii',
  22,
  'Enerhen Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  229,
  7,
  'Ugbomro / Ugbolokposo',
  22,
  'Ugbomro / Ugbolokposo',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  230,
  5,
  'Ugborikoko',
  22,
  'Ugborikoko',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  231,
  6,
  'Ugboroke',
  22,
  'Ugboroke',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  232,
  0,
  'Ebrohimi',
  33,
  'Ebrohimi',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  233,
  0,
  'Eghoro',
  33,
  'Eghoro',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  234,
  0,
  'Gbokoda',
  33,
  'Gbokoda',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  235,
  0,
  'Isekelewu ( Egbema Ii )',
  33,
  'Isekelewu ( Egbema Ii )',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  236,
  0,
  'Koko I',
  33,
  'Koko I',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  237,
  0,
  'Koko Ii',
  33,
  'Koko Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  238,
  0,
  'Ogbinbiri',
  33,
  'Ogbinbiri',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  239,
  0,
  'Ogbudugudu ( Egbema Iv )',
  33,
  'Ogbudugudu ( Egbema Iv )',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  240,
  0,
  'Ogheye',
  33,
  'Ogheye',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  241,
  0,
  'Opuama',
  33,
  'Opuama',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  242,
  0,
  'Bowen',
  34,
  'Bowen',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  243,
  0,
  'Edjeba',
  34,
  'Edjeba',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  244,
  0,
  'G.r.a',
  34,
  'G.r.a',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  245,
  0,
  'Igbudu',
  34,
  'Igbudu',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  246,
  0,
  'Obodo / Omadino',
  34,
  'Obodo / Omadino',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  247,
  0,
  'Ode - Itsekiri',
  34,
  'Ode - Itsekiri',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  248,
  0,
  'Ogunu / Ekurede - Urhobo',
  34,
  'Ogunu / Ekurede - Urhobo',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  249,
  0,
  'Okere',
  34,
  'Okere',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  250,
  0,
  'Okumagba',
  34,
  'Okumagba',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  251,
  0,
  'Okumagba Ii',
  34,
  'Okumagba Ii',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  252,
  0,
  'Pessu',
  34,
  'Pessu',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  253,
  0,
  'Ugbuwangue / Ekurede - Itsekiri',
  34,
  'Ugbuwangue / Ekurede - Itsekiri',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  254,
  0,
  'Aja - Udaibo',
  35,
  'Aja - Udaibo',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  255,
  0,
  'Akpikpa',
  35,
  'Akpikpa',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  256,
  0,
  'Gbaramatu',
  35,
  'Gbaramatu',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  257,
  0,
  'Isaba',
  35,
  'Isaba',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  258,
  0,
  'Madangho',
  35,
  'Madangho',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  259,
  0,
  'Ogbe - Ijoh',
  35,
  'Ogbe - Ijoh',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  260,
  0,
  'Ogidigben',
  35,
  'Ogidigben',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  261,
  0,
  'Oporoza',
  35,
  'Oporoza',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  262,
  0,
  'Orere',
  35,
  'Orere',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
), (
  263,
  0,
  'Ugborodo',
  35,
  'Ugborodo',
  'Bincom',
  '2023-02-18 19:10:25-07',
  '127.0.0.1'
);


create table if not exists "polling_unit" (
  "uniqueid" integer not null,
  "polling_unit_id" integer not null,
  "ward_id" integer not null,
  "lga_id" integer not null,
  "uniquewardid" integer default null,
  "polling_unit_number" varchar(50) default null,
  "polling_unit_name" varchar(50) default null,
  "polling_unit_description" text,
  "lat" varchar(255) default null,
  "long" varchar(255) default null,
  "entered_by_user" varchar(50) default null,
  "date_entered" timestamp default null,
  "user_ip_address" varchar(50) default null,
  primary key ("uniqueid")
)
insert into "polling_unit" (
  "uniqueid",
  "polling_unit_id",
  "ward_id",
  "lga_id",
  "uniquewardid",
  "polling_unit_number",
  "polling_unit_name",
  "polling_unit_description",
  "lat",
  "long",
  "entered_by_user",
  "date_entered",
  "user_ip_address"
)
values (
  8,
  6,
  8,
  17,
  181,
  'DT1708006',
  'Sapele Ward 8 PU _',
  null,
  '5.59371889',
  '5.999311165',
  null,
  null,
  null
), (
  9,
  4,
  1,
  19,
  194,
  'DT1901004',
  'Primary School in Aghara',
  'Primary School in Aghara',
  '5.599585986',
  '6.001336288',
  null,
  null,
  null
), (
  10,
  5,
  1,
  19,
  194,
  'DT1401005',
  'Ishere Primary School  Aghara',
  'Ishere Primary School Aghara',
  '5.595722496',
  '5.99961724',
  null,
  null,
  null
), (
  11,
  5,
  3,
  34,
  244,
  'DT3403005',
  'Igini Primary School',
  ' Esisi Road',
  '5.602005475',
  '6.001611141',
  null,
  null,
  null
), (
  12,
  1,
  4,
  21,
  220,
  'DT2104001',
  'Umukwapa poll unit 1',
  null,
  '5.596383741',
  '5.99023883',
  null,
  null,
  null
), (
  13,
  16,
  1,
  22,
  223,
  'DT2201016',
  'Church in Effurun1 Ovie',
  'Church in Effurun1 Ovie',
  '5.59759314',
  '5.991187248',
  null,
  null,
  null
), (
  14,
  6,
  1,
  19,
  194,
  'DT1901006',
  'Ishere Primary School Aghara',
  null,
  '5.90359853',
  '5.729595722',
  null,
  null,
  null
), (
  15,
  13,
  1,
  22,
  224,
  'DT2201013',
  'Effurun 2 in Uvwie',
  'Effurun 2 in Uvwie',
  '5.904090609',
  '5.729854354',
  null,
  null,
  null
), (
  16,
  5,
  7,
  7,
  59,
  'DT0607005',
  'school in ethiope west',
  'school in ethiope west',
  '5.895063582',
  '5.730405695',
  null,
  null,
  null
), (
  17,
  9,
  1,
  34,
  242,
  'DT3401009',
  'agbasa 1',
  'agbasa 1',
  '5.904748983',
  '5.725361522',
  null,
  null,
  null
), (
  18,
  7,
  1,
  22,
  223,
  'DT2201007',
  'Customary Court P.t.i Road',
  'Customary Court P.t.i Road',
  '5.904025184',
  '5.735836456',
  null,
  null,
  null
), (
  19,
  11,
  2,
  22,
  224,
  'DT2202011',
  'effurun 2',
  'effurun 2',
  '5.903925673',
  '5.736211371',
  null,
  null,
  null
), (
  20,
  1,
  9,
  35,
  262,
  'DT3501001',
  'asumbo town hall1',
  'asumbo town hall1',
  '5.879748019',
  '5.73172331',
  null,
  null,
  null
), (
  21,
  3,
  2,
  22,
  224,
  'DT2202003',
  'eki-otoi',
  null,
  '5.876600455',
  '5.729696257',
  null,
  null,
  null
), (
  22,
  3,
  7,
  6,
  59,
  'DT0607003',
  'pollling 3 in agbara',
  'pollling 3 in agbara',
  '5.900635513',
  '5.72786891',
  null,
  null,
  null
), (
  23,
  6,
  8,
  6,
  60,
  'DT0608006',
  'aghara ii',
  'aghara ii',
  '5.879594849',
  '5.731894945',
  null,
  null,
  null
), (
  24,
  4,
  8,
  6,
  60,
  'Dt0608004',
  'aghara ii',
  'aghara ii',
  '5.910613554',
  '5.768823319',
  null,
  null,
  null
), (
  25,
  6,
  9,
  35,
  262,
  'DT3509006',
  'obiteogbon quarters',
  'obiteogbon quarters',
  '5.915854854',
  '5.775345359',
  null,
  null,
  null
), (
  26,
  7,
  9,
  35,
  262,
  'DT3509007',
  'okegbe quarter1',
  'okegbe quarter1',
  '5.916066505',
  '5.775475401',
  null,
  null,
  null
), (
  27,
  2,
  7,
  6,
  59,
  'DT0607002',
  'agbasa 1',
  'agbasa 1',
  '5.916323572',
  '5.775769489',
  null,
  null,
  null
), (
  28,
  13,
  3,
  34,
  244,
  'DT340313',
  'gra',
  'gra',
  '5.916405598',
  '5.775643861',
  null,
  null,
  null
), (
  29,
  14,
  7,
  6,
  59,
  'DT0607014',
  'agbasa 1',
  'agbasa 1',
  '5.976138434',
  '5.79185625',
  null,
  null,
  null
), (
  30,
  8,
  4,
  1,
  19,
  'DT0104008',
  'anocha north',
  'anocha north',
  '5.976323443',
  '5.791971817',
  null,
  null,
  null
), (
  31,
  12,
  3,
  34,
  244,
  'DT340312',
  'gra ward',
  'gra ward',
  '5.94474279',
  '5.749946582',
  null,
  null,
  null
), (
  32,
  12,
  7,
  6,
  59,
  'DT0607012',
  'school in ethiope west',
  'school in ethiope west',
  '5.960247765',
  '5.787697717',
  null,
  null,
  null
), (
  33,
  4,
  3,
  9,
  90,
  'DT0903004',
  'ellu ',
  'ellu ',
  '5.944916081',
  '5.749138498',
  null,
  null,
  null
), (
  34,
  11,
  9,
  35,
  262,
  'DT3509011',
  'emami quarter 2',
  'emami quarter 2',
  '5.868711331',
  '5.753867466',
  null,
  null,
  null
), (
  35,
  10,
  9,
  35,
  262,
  'DT3509010',
  'emami quarter 1',
  'emami quarter 1',
  '5.869546618',
  '5.752899868',
  null,
  null,
  null
), (
  36,
  9,
  9,
  35,
  262,
  'DT3509009',
  'oguanja quarters',
  'oguanja quarters',
  '5.869563315',
  '5.753218155',
  null,
  null,
  null
), (
  37,
  8,
  9,
  35,
  262,
  'DT3509008',
  'okegbe quarters 2',
  'okegbe quarters 2',
  '5.869457164',
  '5.753248025',
  null,
  null,
  null
), (
  38,
  5,
  9,
  35,
  262,
  'DT3509005',
  'obiteogbon quarters',
  'obiteogbon quarters',
  '5.865254514',
  '5.754391377',
  null,
  null,
  null
), (
  39,
  4,
  9,
  35,
  262,
  'DT3509004',
  'ajudaibo primary school',
  'ajudaibo primary school',
  '5.863768358',
  '5.754947902',
  null,
  null,
  null
), (
  40,
  3,
  9,
  35,
  262,
  'DT3509003',
  'ajudaibo primary school',
  'ajudaibo primary school',
  '5.867018084',
  '5.750225876',
  null,
  null,
  null
), (
  41,
  3,
  4,
  9,
  91,
  'DT0904003',
  'isoko north',
  'isoko north',
  '5.866359036',
  '5.746704932',
  null,
  null,
  null
), (
  42,
  2,
  9,
  35,
  262,
  'DT3509002',
  'hall 2',
  'hall 2',
  '5.866407456',
  '5.746698042',
  null,
  null,
  null
), (
  43,
  4,
  7,
  6,
  59,
  'DT0607004',
  'school in ethiope west',
  'school in ethiope west',
  '5.909925383',
  '5.794301233',
  null,
  null,
  null
), (
  44,
  16,
  2,
  22,
  224,
  'DT220216',
  'uvwie',
  'uvwie',
  '5.878378164',
  '5.783819724',
  null,
  null,
  null
), (
  45,
  6,
  7,
  6,
  59,
  'DT0607006',
  'school in ethiope west',
  'school in ethiope west',
  '5.861365948',
  '5.790962175',
  null,
  null,
  null
), (
  46,
  14,
  1,
  19,
  194,
  'DT1901014',
  'ughelli',
  'ughelli',
  '5.861413666',
  '5.79088636',
  null,
  null,
  null
), (
  47,
  2,
  10,
  15,
  156,
  'DT1510002',
  'cable point i',
  'cable point i',
  '5.861461099',
  '5.79080631',
  null,
  null,
  null
), (
  48,
  3,
  10,
  15,
  156,
  'DT1510003',
  'cable point i',
  'cable point i',
  '5.880444551',
  '5.770730494',
  null,
  null,
  null
), (
  49,
  4,
  10,
  15,
  156,
  'DT1510004',
  'cable point i',
  'cable point i',
  '5.878354903',
  '5.783820223',
  null,
  null,
  null
), (
  50,
  5,
  10,
  15,
  156,
  'DT1510005',
  'cable point i',
  'cable point i',
  '5.878531591',
  '5.806744155',
  null,
  null,
  null
), (
  51,
  6,
  10,
  15,
  156,
  'DT1510006',
  'cable point i',
  'cable point i',
  '5.878639525',
  '5.806654972',
  null,
  null,
  null
), (
  52,
  7,
  10,
  15,
  156,
  'DT1510007',
  'cable point i',
  'cable point i',
  '5.878806006',
  '5.806560262',
  null,
  null,
  null
), (
  53,
  8,
  10,
  15,
  156,
  'DT1510008',
  'cable point i',
  'cable point i',
  '5.879012412',
  '5.806466752',
  null,
  null,
  null
), (
  54,
  9,
  10,
  15,
  156,
  'DT1510009',
  'cable point i',
  'cable point i',
  '5.867669536',
  '5.817836656',
  null,
  null,
  null
), (
  55,
  10,
  10,
  15,
  156,
  'DT1510010',
  'cable point i',
  'cable point i',
  '5.867691306',
  '5.818044285',
  null,
  null,
  null
), (
  56,
  11,
  10,
  15,
  156,
  'DT1510011',
  'cable point i',
  'cable point i',
  '5.867600201',
  '5.81823691',
  null,
  null,
  null
), (
  57,
  15,
  10,
  15,
  156,
  'DT151015',
  'cable point i',
  'cable point i',
  '5.863066776',
  '5.830964841',
  null,
  null,
  null
), (
  58,
  16,
  10,
  15,
  156,
  'DT151016',
  'cable point i',
  'cable point i',
  '5.873470151',
  '5.823753387',
  null,
  null,
  null
), (
  59,
  17,
  10,
  15,
  156,
  'DT151017',
  'cable point i',
  'cable point i',
  '5.851069593',
  '5.836122533',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  60,
  8,
  8,
  22,
  222,
  'DT2288',
  'aka avenue',
  'aka avenue',
  '5.851158986',
  '5.836175239',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  61,
  8,
  3,
  17,
  176,
  'DT1738',
  'sapele',
  'sapele',
  '5.851270898',
  '5.836155212',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  62,
  13,
  7,
  6,
  59,
  'DT6713',
  'ethiope',
  'ethiope',
  '5.85144335',
  '5.836146137',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  63,
  5,
  4,
  1,
  19,
  'DT145',
  'Aniocha North 4',
  'Aniocha North 4',
  '5.863091905',
  '5.831179239',
  'christian',
  '2023-02-18 19:10:25-07',
  '192.168.1.114'
), (
  64,
  13,
  3,
  2,
  6,
  'DT2313',
  'aniocha ward 3',
  'aniocha ward 3',
  '5.866994163',
  '5.821855678',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  65,
  6,
  4,
  1,
  19,
  'DT146',
  'aniocha ward 4',
  'aniocha ward 4',
  '5.867741304',
  '5.817980929',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  66,
  21,
  1,
  22,
  223,
  'DT22121',
  'uru standard junction off jakpa rd',
  'uru standard junction off jakpa rd',
  '5.867601142',
  '5.818139328',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  67,
  1,
  11,
  15,
  157,
  'DT15111',
  'Oshimili',
  'Oshimili South',
  '5.807821471',
  '5.797203767',
  'Christopher',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  68,
  2,
  11,
  10,
  108,
  'DT10112',
  'Isoko',
  'Isoko South',
  '5.807754862',
  '5.797288301',
  'Christopher',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  69,
  3,
  11,
  15,
  157,
  'DT15113',
  'Oshimili',
  'Oshimili',
  '5.842704983',
  '5.786380747',
  'Christopher',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  70,
  4,
  11,
  15,
  157,
  'DT15114',
  'Oshimili',
  'Oshimili South',
  '5.842790118',
  '5.786331657',
  'Christopher',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  71,
  5,
  11,
  15,
  157,
  'DT15115',
  'Oshimili',
  'Oshimili South',
  '5.842864681',
  '5.78625909',
  'Christopher',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  72,
  6,
  11,
  15,
  157,
  'DT15116',
  'Oshimili',
  'Oshimili South',
  '5.842019519',
  '5.831029509',
  'Christopher',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  73,
  7,
  11,
  15,
  157,
  'DT15117',
  'Oshimili',
  'Oshimili South',
  '5.842620963',
  '5.831811301',
  'Christopher',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  74,
  1,
  5,
  10,
  104,
  'DT105001',
  'Isoko',
  'Isoko South',
  '5.837696181',
  '5.812672375',
  'Christopher',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  75,
  13,
  10,
  21,
  218,
  'DT211013',
  'Ukwuani',
  'Ukwuani ',
  '5.835630792',
  '5.824939901',
  'Christopher',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  76,
  3,
  4,
  21,
  220,
  'DT2143',
  'Ukwuani',
  'Ukwuani',
  '5.835483357',
  '5.824884533',
  'Christopher',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  77,
  6,
  1,
  22,
  223,
  'DT2216',
  'Effurun',
  'Effurun',
  '5.829120073',
  '5.825480729',
  'Christopher',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  78,
  11,
  10,
  21,
  218,
  'DT211011',
  'Ukwuani',
  'Ukwuani',
  '5.822940228',
  '5.835938252',
  'Christopher',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  79,
  7,
  4,
  1,
  19,
  'DT147',
  'aniocha',
  'aniocha',
  '5.785890606',
  '5.829924057',
  'Christopher',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  80,
  3,
  0,
  31,
  28,
  'DT3103',
  'Bomadi',
  'Bomadi',
  '5.822974806',
  '5.835903908',
  'Dare',
  '2023-02-18 19:10:25-07',
  '192.168.1.114'
), (
  81,
  5,
  0,
  31,
  28,
  'DT3105',
  'Bomadi',
  'Bomadi',
  '5.813067872',
  '5.850975385',
  'Dare',
  '2023-02-18 19:10:25-07',
  '192.168.1.114'
), (
  82,
  1,
  0,
  31,
  28,
  'DT310001',
  'Bomadi',
  'Bomadi',
  '5.813128721',
  '5.851046574',
  'Dare',
  '2023-02-18 19:10:25-07',
  '192.168.1.114'
), (
  83,
  3,
  6,
  13,
  135,
  'DT1363',
  'Udogbie Village',
  'Udogbie Village',
  '5.795222618',
  '5.83904385',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  84,
  8,
  12,
  22,
  226,
  'DT22128',
  'aka avenue',
  'aka avenue',
  '5.795293702',
  '5.839015885',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.109'
), (
  85,
  3,
  9,
  6,
  61,
  'DT693',
  'ethiope west ',
  'ethiope west ',
  '5.801800496',
  '5.895480998',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  86,
  8,
  8,
  6,
  60,
  'DT688',
  'ethiope',
  'ethiope west ',
  '5.802012582',
  '5.895422869',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  87,
  2,
  8,
  6,
  60,
  'DT682',
  'ethiope',
  'ethiope west ',
  '5.802052137',
  '5.895223879',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  88,
  6,
  10,
  6,
  62,
  'DT6106',
  'ethiope',
  'ethiope west ',
  '5.800760234',
  '5.888332279',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  89,
  12,
  9,
  6,
  61,
  'DT6912',
  'ethiope unit 12',
  'ethiope unit 12',
  '5.800857495',
  '5.888584717',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  90,
  7,
  0,
  31,
  26,
  'DT3107',
  'kolafiogbene',
  'kolafio',
  '5.799316688',
  '5.892493172',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  91,
  11,
  0,
  31,
  26,
  'DT31011',
  'kolafiogbene',
  'kolafio',
  '5.799247669',
  '5.892551277',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  92,
  15,
  0,
  31,
  26,
  'DT31015',
  'kolafiogbene',
  'kolafiogbene',
  '5.949238684',
  '5.696328122',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  93,
  16,
  0,
  31,
  26,
  'DT31016',
  'kolafiogbene',
  'kolafiogbene',
  '5.949328101',
  '5.696164548',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  94,
  9,
  0,
  31,
  30,
  'DT3109',
  'kolafiogbene',
  'kolafiogbene',
  '5.948599325',
  '5.695844094',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  95,
  8,
  0,
  31,
  30,
  'DT3108',
  'kolafiogbene',
  'kolafiogbene',
  '5.947600862',
  '5.72692069',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  96,
  14,
  0,
  31,
  26,
  'DT31014',
  'kolafiogbene',
  'kolafiogbene',
  '5.9266113',
  '5.68939042',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  97,
  18,
  0,
  31,
  26,
  'DT31018',
  'kolafiogbene',
  'kolafiogbene',
  '5.926621717',
  '5.689337411',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  98,
  12,
  0,
  31,
  26,
  'DT31012',
  'kolafiogbene',
  'kolafiogbene',
  '5.926029293',
  '5.70101689',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  99,
  4,
  0,
  31,
  30,
  'DT3104',
  'kolafiogbene',
  'kolafiogbene',
  '5.987535593',
  '5.77571573',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  100,
  6,
  0,
  31,
  30,
  'DT3106',
  'kolafiogbene',
  'kolafiogbene',
  '5.964548939',
  '5.710539049',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  101,
  10,
  0,
  31,
  30,
  'DT31010',
  'kolafiogbene',
  'kolafiogbene',
  '5.966931481',
  '5.714765312',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  102,
  51,
  0,
  31,
  30,
  'DT31051',
  'kolafiogbene',
  'kolafiogbene',
  '5.98954208',
  '5.76373367',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  103,
  21,
  0,
  31,
  30,
  'DT31021',
  'kolafiogbene',
  'kolafiogbene',
  '5.989685426',
  '5.76395642',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  104,
  31,
  0,
  31,
  30,
  'DT31031',
  'kolafiogbene',
  'kolafiogbene',
  '5.970365586',
  '5.731097122',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.104'
), (
  105,
  5,
  5,
  11,
  115,
  'DT1155',
  'Ndokwa east',
  'Ndokwa east',
  '5.948545677',
  '5.696001704',
  'Dare',
  '2023-02-18 19:10:25-07',
  '192.168.1.111'
), (
  106,
  13,
  0,
  34,
  244,
  'DT34013',
  'gra',
  'gra',
  '5.953962649',
  '5.700047022',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.108'
), (
  107,
  12,
  0,
  34,
  244,
  'DT34012',
  'gra',
  'gra',
  '5.98539512',
  '5.764853605',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.108'
), (
  108,
  1,
  0,
  32,
  38,
  'DT3201',
  'seimbiri',
  'seimbiri',
  '5.989630887',
  '5.763867217',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.108'
), (
  109,
  6,
  5,
  11,
  115,
  'DT1156',
  'ndokwa',
  'ndokwa',
  '5.989745019',
  '5.764018125',
  'Israel',
  '2023-02-18 19:10:25-07',
  '192.168.1.108'
);


create table if not exists AGENTNAME (
  "name_id" integer not null,
  "firstname" varchar(255) not null,
  "lastname" varchar(255) not null,
  "email" varchar(255) default null,
  "phone" char(13) not null,
  "pollingunit_uniqueid" integer not null,
  primary key ("name_id")
)
insert into "agentname" (
  "name_id",
  "firstname",
  "lastname",
  "email",
  "phone",
  "pollingunit_uniqueid"
)
values (
  1, 
  'Christian', 
  'Emenike', 
  'christian@bincom.net', 
  '08034699500', 
  1
), (
  2, 
  'Ngozi', 
  'Emenike', 
  'biggysmalls@home.net', 
  '08089003444', 
  2
), (
  3, 
  'Chinyere', 
  'Emenike', 
  'chinyere@emenike.net', 
  '07034532310', 
  1
), (
  4, 
  'Chimezie', 
  'Emenike', 
  'chimezie@emenike.net', 
  '07034532322', 
  2
);


create table if not exists ANNOUNCED_LGA_RESULTS (
  "result_id" integer not null,
  "lga_name" varchar(50) not null,
  "party_abbreviation" char(4) not null,
  "party_score" integer not null,
  "entered_by_user" varchar(50) not null,
  "date_entered" timestamp not null,
  "user_ip_address" varchar(50) not null,
  primary key ("result_id")
)
insert into "announced_lga_results" (
  "result_id",
  "lga_name",
  "party_abbreviation",
  "party_score",
  "entered_by_user",
  "date_entered",
  "user_ip_address"
)
values (
  1, 
  '33', 
  'PDP', 
  78129, 
  '', 
  '2011-04-27 09:46:05', 
  '192.168.1.110'
), (
  2, 
  '33', 
  'DPP', 
  15248, 
  '', 
  '2011-04-27 09:46:05', 
  '192.168.1.110'
), (
  3, 
  '33', 
  'ACN', 
  8597, 
  '', 
  '2011-04-27 09:46:05', 
  '192.168.1.110'
), (
  4, 
  '33', 
  'PPA', 
  797, 
  '', 
  '2011-04-27 09:46:05', 
  '192.168.1.110'
), (
  5, 
  '33', 
  'CDC', 
  79513, 
  '', 
  '2011-04-27 09:46:05', 
  '192.168.1.110'
), (
  6, 
  '33', 
  'JP', 
  95174, 
  '', 
  '2011-04-27 09:46:05', 
  '192.168.1.110'
), (
  7, 
  '33', 
  'ANPP', 
  37330, 
  '', 
  '2011-04-27 09:46:05', 
  '192.168.1.110'
), (
  8, 
  '33', 
  'LABO', 
  1126, 
  '', 
  '2011-04-27 09:46:05', 
  '192.168.1.110'
), (
  9, 
  '33', 
  'CPP', 
  93643, 
  '', 
  '2011-04-27 09:46:05', 
  '192.168.1.110'
), (
  19, 
  '1', 
  'PDP', 
  79659, 
  '', 
  '2011-04-27 09:49:55', 
  '192.168.1.110'
), (
  20, 
  '1', 
  'DPP', 
  48207, 
  '', 
  '2011-04-27 09:49:55', 
  '192.168.1.110'
), (
  21, 
  '1', 
  'ACN', 
  22739, 
  '', 
  '2011-04-27 09:49:55', 
  '192.168.1.110'
), (
  22, 
  '1', 
  'PPA', 
  78860, 
  '', 
  '2011-04-27 09:49:55', 
  '192.168.1.110'
), (
  23, 
  '1', 
  'CDC', 
  29141, 
  '', 
  '2011-04-27 09:49:55', 
  '192.168.1.110'
), (
  24, 
  '1', 
  'JP', 
  9124, 
  '', 
  '2011-04-27 09:49:55', 
  '192.168.1.110'
), (
  25, 
  '1', 
  'ANPP', 
  58196, 
  '', 
  '2011-04-27 09:49:55', 
  '192.168.1.110'
), (
  26, 
  '1', 
  'LABO', 
  63610, 
  '', 
  '2011-04-27 09:49:55', 
  '192.168.1.110'
), (
  27, 
  '1', 
  'CPP', 
  43460, 
  '', 
  '2011-04-27 09:49:55', 
  '192.168.1.110'
), (
  28, 
  '18', 
  'PDP', 
  34469, 
  '', 
  '2011-04-27 09:55:11', 
  '192.168.1.110'
), (
  29, 
  '18', 
  'DPP', 
  29039, 
  '', 
  '2011-04-27 09:55:11', 
  '192.168.1.110'
), (
  30, 
  '18', 
  'ACN', 
  30454, 
  '', 
  '2011-04-27 09:55:11', 
  '192.168.1.110'
), (
  31, 
  '18', 
  'PPA', 
  46350, 
  '', 
  '2011-04-27 09:55:11', 
  '192.168.1.110'
), (
  32, 
  '18', 
  'CDC', 
  40388, 
  '', 
  '2011-04-27 09:55:11', 
  '192.168.1.110'
), (
  33, 
  '18', 
  'JP', 
  62890, 
  '', 
  '2011-04-27 09:55:11', 
  '192.168.1.110'
), (
  34, 
  '18', 
  'ANPP', 
  93286, 
  '', 
  '2011-04-27 09:55:11', 
  '192.168.1.110'
), (
  35, 
  '18', 
  'LABO', 
  77759, 
  '', 
  '2011-04-27 09:55:11', 
  '192.168.1.110'
), (
  36, 
  '18', 
  'CPP', 
  8938, 
  '', 
  '2011-04-27 09:55:11', 
  '192.168.1.110'
), (
  37, 
  '19', 
  'PDP', 
  20643, 
  '', 
  '2011-04-27 09:55:49', 
  '192.168.1.110'
), (
  38, 
  '19', 
  'DPP', 
  79141, 
  '', 
  '2011-04-27 09:55:49', 
  '192.168.1.110'
), (
  39, 
  '19', 
  'ACN', 
  22066, 
  '', 
  '2011-04-27 09:55:49', 
  '192.168.1.110'
), (
  40, 
  '19', 
  'PPA', 
  94167, 
  '', 
  '2011-04-27 09:55:49', 
  '192.168.1.110'
), (
  41, 
  '19', 
  'CDC', 
  19897, 
  '', 
  '2011-04-27 09:55:49', 
  '192.168.1.110'
), (
  42, 
  '19', 
  'JP', 
  16982, 
  '', 
  '2011-04-27 09:55:49', 
  '192.168.1.110'
), (
  43, 
  '19', 
  'ANPP', 
  25220, 
  '', 
  '2011-04-27 09:55:49', 
  '192.168.1.110'
), (
  44, 
  '19', 
  'LABO', 
  75152, 
  '', 
  '2011-04-27 09:55:49', 
  '192.168.1.110'
), (
  45, 
  '19', 
  'CPP', 
  99, 
  '', 
  '2011-04-27 09:55:49', 
  '192.168.1.110'
), (
  46, 
  '21', 
  'PDP', 
  83731, 
  '', 
  '2011-04-27 09:56:36', 
  '192.168.1.110'
), (
  47, 
  '21', 
  'DPP', 
  92725, 
  '', 
  '2011-04-27 09:56:36', 
  '192.168.1.110'
), (
  48, 
  '21', 
  'ACN', 
  49369, 
  '', 
  '2011-04-27 09:56:36', 
  '192.168.1.110'
), (
  49, 
  '21', 
  'PPA', 
  22152, 
  '', 
  '2011-04-27 09:56:36', 
  '192.168.1.110'
), (
  50, 
  '21', 
  'CDC', 
  62653, 
  '', 
  '2011-04-27 09:56:36', 
  '192.168.1.110'
), (
  51, 
  '21', 
  'JP', 
  46810, 
  '', 
  '2011-04-27 09:56:36', 
  '192.168.1.110'
), (
  52, 
  '21', 
  'ANPP', 
  46088, 
  '', 
  '2011-04-27 09:56:36', 
  '192.168.1.110'
), (
  53, 
  '21', 
  'LABO', 
  90009, 
  '', 
  '2011-04-27 09:56:36', 
  '192.168.1.110'
), (
  54, 
  '21', 
  'CPP', 
  11783, 
  '', 
  '2011-04-27 09:56:36', 
  '192.168.1.110'
), (
  55, 
  '7', 
  'PDP', 
  107808, 
  '', 
  '2011-04-27 09:57:39', 
  '192.168.1.110'
), (
  56, 
  '7', 
  'DPP', 
  16816, 
  '', 
  '2011-04-27 09:57:39', 
  '192.168.1.110'
), (
  57, 
  '7', 
  'ACN', 
  78728, 
  '', 
  '2011-04-27 09:57:39', 
  '192.168.1.110'
), (
  58, 
  '7', 
  'PPA', 
  66409, 
  '', 
  '2011-04-27 09:57:39', 
  '192.168.1.110'
), (
  59, 
  '7', 
  'CDC', 
  95860, 
  '', 
  '2011-04-27 09:57:39', 
  '192.168.1.110'
), (
  60, 
  '7', 
  'JP', 
  80071, 
  '', 
  '2011-04-27 09:57:39', 
  '192.168.1.110'
), (
  61, 
  '7', 
  'ANPP', 
  12777, 
  '', 
  '2011-04-27 09:57:39', 
  '192.168.1.110'
), (
  62, 
  '7', 
  'LABO', 
  23672, 
  '', 
  '2011-04-27 09:57:39', 
  '192.168.1.110'
), (
  63, 
  '7', 
  'CPP', 
  80029, 
  '', 
  '2011-04-27 09:57:39', 
  '192.168.1.110'
), (
  64, 
  '2', 
  'PDP', 
  42288, 
  '', 
  '2011-04-27 09:58:33', 
  '192.168.1.110'
), (
  65, 
  '2', 
  'DPP', 
  11832, 
  '', 
  '2011-04-27 09:58:33', 
  '192.168.1.110'
), (
  66, 
  '2', 
  'ACN', 
  40693, 
  '', 
  '2011-04-27 09:58:33', 
  '192.168.1.110'
), (
  67, 
  '2', 
  'PPA', 
  85319, 
  '', 
  '2011-04-27 09:58:33', 
  '192.168.1.110'
), (
  68, 
  '2', 
  'CDC', 
  5402, 
  '', 
  '2011-04-27 09:58:33', 
  '192.168.1.110'
), (
  69, 
  '2', 
  'JP', 
  71050, 
  '', 
  '2011-04-27 09:58:33', 
  '192.168.1.110'
), (
  70, 
  '2', 
  'ANPP', 
  39042, 
  '', 
  '2011-04-27 09:58:33', 
  '192.168.1.110'
), (
  71, 
  '2', 
  'LABO', 
  82063, 
  '', 
  '2011-04-27 09:58:33', 
  '192.168.1.110'
), (
  72, 
  '2', 
  'CPP', 
  93185, 
  '', 
  '2011-04-27 09:58:33', 
  '192.168.1.110'
), (
  73, 
  '5', 
  'PDP', 
  25045, 
  '', 
  '2011-04-27 10:14:09', 
  '192.168.1.110'
), (
  74, 
  '5', 
  'DPP', 
  73745, 
  '', 
  '2011-04-27 10:14:09', 
  '192.168.1.110'
), (
  75, 
  '5', 
  'ACN', 
  36629, 
  '', 
  '2011-04-27 10:14:09', 
  '192.168.1.110'
), (
  76, 
  '5', 
  'PPA', 
  24875, 
  '', 
  '2011-04-27 10:14:09', 
  '192.168.1.110'
), (
  77, 
  '5', 
  'CDC', 
  15009, 
  '', 
  '2011-04-27 10:14:09', 
  '192.168.1.110'
), (
  78, 
  '5', 
  'JP', 
  417, 
  '', 
  '2011-04-27 10:14:09', 
  '192.168.1.110'
), (
  79, 
  '5', 
  'ANPP', 
  57060, 
  '', 
  '2011-04-27 10:14:09', 
  '192.168.1.110'
), (
  80, 
  '5', 
  'LABO', 
  84047, 
  '', 
  '2011-04-27 10:14:09', 
  '192.168.1.110'
), (
  81, 
  '5', 
  'CPP', 
  49057, 
  '', 
  '2011-04-27 10:14:09', 
  '192.168.1.110'
), (
  82, 
  '31', 
  'PDP', 
  132906, 
  '', 
  '2011-04-27 12:31:10', 
  '192.168.1.101'
), (
  83, 
  '31', 
  'DPP', 
  27115, 
  '', 
  '2011-04-27 12:31:10', 
  '192.168.1.101'
), (
  84, 
  '31', 
  'ACN', 
  13272, 
  '', 
  '2011-04-27 12:31:10', 
  '192.168.1.101'
), (
  85, 
  '31', 
  'PPA', 
  10741, 
  '', 
  '2011-04-27 12:31:10', 
  '192.168.1.101'
), (
  86, 
  '31', 
  'CDC', 
  13887, 
  '', 
  '2011-04-27 12:31:10', 
  '192.168.1.101'
), (
  87, 
  '31', 
  'JP', 
  37213, 
  '', 
  '2011-04-27 12:31:10', 
  '192.168.1.101'
), (
  88, 
  '31', 
  'ANPP', 
  44403, 
  '', 
  '2011-04-27 12:31:10', 
  '192.168.1.101'
), (
  89, 
  '31', 
  'LABO', 
  10375, 
  '', 
  '2011-04-27 12:31:10', 
  '192.168.1.101'
), (
  90, 
  '31', 
  'CPP', 
  18664, 
  '', 
  '2011-04-27 12:31:10', 
  '192.168.1.101'
), (
  100, 
  '16', 
  'PDP', 
  69331, 
  '', 
  '2011-04-27 12:32:36', 
  '192.168.1.101'
), (
  101, 
  '16', 
  'DPP', 
  61132, 
  '', 
  '2011-04-27 12:32:36', 
  '192.168.1.101'
), (
  102, 
  '16', 
  'ACN', 
  88353, 
  '', 
  '2011-04-27 12:32:36', 
  '192.168.1.101'
), (
  103, 
  '16', 
  'PPA', 
  76797, 
  '', 
  '2011-04-27 12:32:36', 
  '192.168.1.101'
), (
  104, 
  '16', 
  'CDC', 
  18927, 
  '', 
  '2011-04-27 12:32:36', 
  '192.168.1.101'
), (
  105, 
  '16', 
  'JP', 
  64243, 
  '', 
  '2011-04-27 12:32:36', 
  '192.168.1.101'
), (
  106, 
  '16', 
  'ANPP', 
  64436, 
  '', 
  '2011-04-27 12:32:36', 
  '192.168.1.101'
), (
  107, 
  '16', 
  'LABO', 
  29449, 
  '', 
  '2011-04-27 12:32:36', 
  '192.168.1.101'
), (
  108, 
  '16', 
  'CPP', 
  53935, 
  '', 
  '2011-04-27 12:32:36', 
  '192.168.1.101'
), (
  109, 
  '6', 
  'PDP', 
  128269, 
  '', 
  '2011-04-27 12:51:58', 
  '192.168.1.101'
), (
  110, 
  '6', 
  'DPP', 
  51308, 
  '', 
  '2011-04-27 12:51:58', 
  '192.168.1.101'
), (
  111, 
  '6', 
  'ACN', 
  80219, 
  '', 
  '2011-04-27 12:51:58', 
  '192.168.1.101'
), (
  112, 
  '6', 
  'PPA', 
  66570, 
  '', 
  '2011-04-27 12:51:58', 
  '192.168.1.101'
), (
  113, 
  '6', 
  'CDC', 
  92193, 
  '', 
  '2011-04-27 12:51:58', 
  '192.168.1.101'
), (
  114, 
  '6', 
  'JP', 
  61252, 
  '', 
  '2011-04-27 12:51:58', 
  '192.168.1.101'
), (
  115, 
  '6', 
  'ANPP', 
  29683, 
  '', 
  '2011-04-27 12:51:58', 
  '192.168.1.101'
), (
  116, 
  '6', 
  'LABO', 
  64656, 
  '', 
  '2011-04-27 12:51:58', 
  '192.168.1.101'
), (
  117, 
  '6', 
  'CPP', 
  34231, 
  '', 
  '2011-04-27 12:51:58', 
  '192.168.1.101'
), (
  118, 
  '17', 
  'PDP', 
  92259, 
  '', 
  '2011-04-27 12:52:32', 
  '192.168.1.101'
), (
  119, 
  '17', 
  'DPP', 
  99815, 
  '', 
  '2011-04-27 12:52:32', 
  '192.168.1.101'
), (
  120, 
  '17', 
  'ACN', 
  84655, 
  '', 
  '2011-04-27 12:52:32', 
  '192.168.1.101'
), (
  121, 
  '17', 
  'PPA', 
  73543, 
  '', 
  '2011-04-27 12:52:32', 
  '192.168.1.101'
), (
  122, 
  '17', 
  'CDC', 
  13751, 
  '', 
  '2011-04-27 12:52:32', 
  '192.168.1.101'
), (
  123, 
  '17', 
  'JP', 
  48125, 
  '', 
  '2011-04-27 12:52:32', 
  '192.168.1.101'
), (
  124, 
  '17', 
  'ANPP', 
  99373, 
  '', 
  '2011-04-27 12:52:32', 
  '192.168.1.101'
), (
  125, 
  '17', 
  'LABO', 
  52490, 
  '', 
  '2011-04-27 12:52:32', 
  '192.168.1.101'
), (
  126, 
  '17', 
  'CPP', 
  64327, 
  '', 
  '2011-04-27 12:52:32', 
  '192.168.1.101'
), (
  127, 
  '8', 
  'PDP', 
  74867, 
  '', 
  '2011-04-27 13:54:57', 
  '192.168.1.101'
), (
  128, 
  '8', 
  'DPP', 
  39857, 
  '', 
  '2011-04-27 13:54:57', 
  '192.168.1.101'
), (
  129, 
  '8', 
  'ACN', 
  46780, 
  '', 
  '2011-04-27 13:54:57', 
  '192.168.1.101'
), (
  130, 
  '8', 
  'PPA', 
  50330, 
  '', 
  '2011-04-27 13:54:57', 
  '192.168.1.101'
), (
  131, 
  '8', 
  'CDC', 
  11307, 
  '', 
  '2011-04-27 13:54:57', 
  '192.168.1.101'
), (
  132, 
  '8', 
  'JP', 
  5547, 
  '', 
  '2011-04-27 13:54:57', 
  '192.168.1.101'
), (
  133, 
  '8', 
  'ANPP', 
  93811, 
  '', 
  '2011-04-27 13:54:57', 
  '192.168.1.101'
), (
  134, 
  '8', 
  'LABO', 
  52416, 
  '', 
  '2011-04-27 13:54:57', 
  '192.168.1.101'
), (
  135, 
  '8', 
  'CPP', 
  80645, 
  '', 
  '2011-04-27 13:54:57', 
  '192.168.1.101'
), (
  136, 
  '12', 
  'PDP', 
  56342, 
  '', 
  '2011-04-27 13:57:06', 
  '192.168.1.101'
), (
  137, 
  '12', 
  'DPP', 
  104379, 
  '', 
  '2011-04-27 13:57:06', 
  '192.168.1.101'
), (
  138, 
  '12', 
  'ACN', 
  1823, 
  '', 
  '2011-04-27 13:57:06', 
  '192.168.1.101'
), (
  139, 
  '12', 
  'PPA', 
  45261, 
  '', 
  '2011-04-27 13:57:06', 
  '192.168.1.101'
), (
  140, 
  '12', 
  'CDC', 
  20835, 
  '', 
  '2011-04-27 13:57:06', 
  '192.168.1.101'
), (
  141, 
  '12', 
  'JP', 
  68393, 
  '', 
  '2011-04-27 13:57:06', 
  '192.168.1.101'
), (
  142, 
  '12', 
  'ANPP', 
  79460, 
  '', 
  '2011-04-27 13:57:06', 
  '192.168.1.101'
), (
  143, 
  '12', 
  'LABO', 
  92118, 
  '', 
  '2011-04-27 13:57:06', 
  '192.168.1.101'
), (
  144, 
  '12', 
  'CPP', 
  22210, 
  '', 
  '2011-04-27 13:57:06', 
  '192.168.1.101'
), (
  145, 
  '9', 
  'PDP', 
  52353, 
  '', 
  '2011-04-27 14:20:23', 
  '192.168.1.101'
), (
  146, 
  '9', 
  'DPP', 
  15411, 
  '', 
  '2011-04-27 14:20:23', 
  '192.168.1.101'
), (
  147, 
  '9', 
  'ACN', 
  30137, 
  '', 
  '2011-04-27 14:20:23', 
  '192.168.1.101'
), (
  148, 
  '9', 
  'PPA', 
  30149, 
  '', 
  '2011-04-27 14:20:23', 
  '192.168.1.101'
), (
  149, 
  '9', 
  'CDC', 
  60337, 
  '', 
  '2011-04-27 14:20:23', 
  '192.168.1.101'
), (
  150, 
  '9', 
  'JP', 
  11237, 
  '', 
  '2011-04-27 14:20:23', 
  '192.168.1.101'
), (
  151, 
  '9', 
  'ANPP', 
  75174, 
  '', 
  '2011-04-27 14:20:23', 
  '192.168.1.101'
), (
  152, 
  '9', 
  'LABO', 
  42156, 
  '', 
  '2011-04-27 14:20:23', 
  '192.168.1.101'
), (
  153, 
  '9', 
  'CPP', 
  85259, 
  '', 
  '2011-04-27 14:20:23', 
  '192.168.1.101'
), (
  154, 
  '35', 
  'PDP', 
  158975, 
  '', 
  '2011-04-27 14:23:21', 
  '192.168.1.101'
), (
  155, 
  '35', 
  'DPP', 
  45209, 
  '', 
  '2011-04-27 14:23:21', 
  '192.168.1.101'
), (
  156, 
  '35', 
  'ACN', 
  17268, 
  '', 
  '2011-04-27 14:23:21', 
  '192.168.1.101'
), (
  157, 
  '35', 
  'PPA', 
  56294, 
  '', 
  '2011-04-27 14:23:21', 
  '192.168.1.101'
), (
  158, 
  '35', 
  'CDC', 
  29666, 
  '', 
  '2011-04-27 14:23:21', 
  '192.168.1.101'
), (
  159, 
  '35', 
  'JP', 
  79445, 
  '', 
  '2011-04-27 14:23:21', 
  '192.168.1.101'
), (
  160, 
  '35', 
  'ANPP', 
  8228, 
  '', 
  '2011-04-27 14:23:21', 
  '192.168.1.101'
), (
  161, 
  '35', 
  'LABO', 
  2804, 
  '', 
  '2011-04-27 14:23:21', 
  '192.168.1.101'
), (
  162, 
  '35', 
  'CPP', 
  89336, 
  '', 
  '2011-04-27 14:23:21', 
  '192.168.1.101'
), (
  163, 
  '34', 
  'PDP', 
  103775, 
  '', 
  '2011-04-27 14:29:27', 
  '192.168.1.101'
), (
  164, 
  '34', 
  'DPP', 
  45913, 
  '', 
  '2011-04-27 14:29:27', 
  '192.168.1.101'
), (
  165, 
  '34', 
  'ACN', 
  1836, 
  '', 
  '2011-04-27 14:29:27', 
  '192.168.1.101'
), (
  166, 
  '34', 
  'PPA', 
  39194, 
  '', 
  '2011-04-27 14:29:27', 
  '192.168.1.101'
), (
  167, 
  '34', 
  'CDC', 
  90465, 
  '', 
  '2011-04-27 14:29:27', 
  '192.168.1.101'
), (
  168, 
  '34', 
  'JP', 
  34743, 
  '', 
  '2011-04-27 14:29:27', 
  '192.168.1.101'
), (
  169, 
  '34', 
  'ANPP', 
  2319, 
  '', 
  '2011-04-27 14:29:27', 
  '192.168.1.101'
), (
  170, 
  '34', 
  'LABO', 
  7366, 
  '', 
  '2011-04-27 14:29:27', 
  '192.168.1.101'
), (
  171, 
  '34', 
  'CPP', 
  29871, 
  '', 
  '2011-04-27 14:29:27', 
  '192.168.1.101'
), (
  172, 
  '22', 
  'PDP', 
  41642, 
  '', 
  '2011-04-27 14:42:01', 
  '192.168.1.101'
), (
  173, 
  '22', 
  'DPP', 
  81197, 
  '', 
  '2011-04-27 14:42:01', 
  '192.168.1.101'
), (
  174, 
  '22', 
  'ACN', 
  51626, 
  '', 
  '2011-04-27 14:42:01', 
  '192.168.1.101'
), (
  175, 
  '22', 
  'PPA', 
  18088, 
  '', 
  '2011-04-27 14:42:01', 
  '192.168.1.101'
), (
  176, 
  '22', 
  'CDC', 
  35559, 
  '', 
  '2011-04-27 14:42:01', 
  '192.168.1.101'
), (
  177, 
  '22', 
  'JP', 
  23533, 
  '', 
  '2011-04-27 14:42:01', 
  '192.168.1.101'
), (
  178, 
  '22', 
  'ANPP', 
  10987, 
  '', 
  '2011-04-27 14:42:01', 
  '192.168.1.101'
), (
  179, 
  '22', 
  'LABO', 
  84335, 
  '', 
  '2011-04-27 14:42:01', 
  '192.168.1.101'
), (
  180, 
  '22', 
  'CPP', 
  88712, 
  '', 
  '2011-04-27 14:42:01', 
  '192.168.1.101'
), (
  181, 
  '20', 
  'PDP', 
  103877, 
  '', 
  '2011-04-27 14:52:06', 
  '192.168.1.101'
), (
  182, 
  '20', 
  'DPP', 
  128632, 
  '', 
  '2011-04-27 14:52:07', 
  '192.168.1.101'
), (
  183, 
  '20', 
  'ACN', 
  61515, 
  '', 
  '2011-04-27 14:52:07', 
  '192.168.1.101'
), (
  184, 
  '20', 
  'PPA', 
  47668, 
  '', 
  '2011-04-27 14:52:07', 
  '192.168.1.101'
), (
  185, 
  '20', 
  'CDC', 
  53794, 
  '', 
  '2011-04-27 14:52:07', 
  '192.168.1.101'
), (
  186, 
  '20', 
  'JP', 
  25967, 
  '', 
  '2011-04-27 14:52:07', 
  '192.168.1.101'
), (
  187, 
  '20', 
  'ANPP', 
  68450, 
  '', 
  '2011-04-27 14:52:07', 
  '192.168.1.101'
), (
  188, 
  '20', 
  'LABO', 
  64351, 
  '', 
  '2011-04-27 14:52:07', 
  '192.168.1.101'
), (
  189, 
  '20', 
  'CPP', 
  16404, 
  '', 
  '2011-04-27 14:52:07', 
  '192.168.1.101'
), (
  190, 
  '11', 
  'PDP', 
  102831, 
  '', 
  '2011-04-27 16:28:41', 
  '192.168.1.101'
), (
  191, 
  '11', 
  'DPP', 
  102932, 
  '', 
  '2011-04-27 16:28:41', 
  '192.168.1.101'
), (
  192, 
  '11', 
  'ACN', 
  11181, 
  '', 
  '2011-04-27 16:28:41', 
  '192.168.1.101'
), (
  193, 
  '11', 
  'PPA', 
  69057, 
  '', 
  '2011-04-27 16:28:41', 
  '192.168.1.101'
), (
  194, 
  '11', 
  'CDC', 
  11742, 
  '', 
  '2011-04-27 16:28:41', 
  '192.168.1.101'
), (
  195, 
  '11', 
  'JP', 
  51540, 
  '', 
  '2011-04-27 16:28:41', 
  '192.168.1.101'
), (
  196, 
  '11', 
  'ANPP', 
  22471, 
  '', 
  '2011-04-27 16:28:41', 
  '192.168.1.101'
), (
  197, 
  '11', 
  'LABO', 
  57735, 
  '', 
  '2011-04-27 16:28:41', 
  '192.168.1.101'
), (
  198, 
  '11', 
  'CPP', 
  21264, 
  '', 
  '2011-04-27 16:28:41', 
  '192.168.1.101'
), (
  199, 
  '10', 
  'PDP', 
  51093, 
  'Omawuli - ', 
  '2011-04-27 17:01:31', 
  '192.168.1.101'
), (
  200, 
  '10', 
  'DPP', 
  20155, 
  'Omawuli - ', 
  '2011-04-27 17:01:31', 
  '192.168.1.101'
), (
  201, 
  '10', 
  'ACN', 
  9495, 
  'Omawuli - ', 
  '2011-04-27 17:01:31', 
  '192.168.1.101'
), (
  202, 
  '10', 
  'PPA', 
  42179, 
  'Omawuli - ', 
  '2011-04-27 17:01:31', 
  '192.168.1.101'
), (
  203, 
  '10', 
  'CDC', 
  82406, 
  'Omawuli - ', 
  '2011-04-27 17:01:31', 
  '192.168.1.101'
), (
  204, 
  '10', 
  'JP', 
  85494, 
  'Omawuli - ', 
  '2011-04-27 17:01:31', 
  '192.168.1.101'
), (
  205, 
  '10', 
  'ANPP', 
  80250, 
  'Omawuli - ', 
  '2011-04-27 17:01:31', 
  '192.168.1.101'
), (
  206, 
  '10', 
  'LABO', 
  44770, 
  'Omawuli - ', 
  '2011-04-27 17:01:31', 
  '192.168.1.101'
), (
  207, 
  '10', 
  'CPP', 
  83099, 
  'Omawuli - ', 
  '2011-04-27 17:01:31', 
  '192.168.1.101'
), (
  208, 
  '13', 
  'PDP', 
  88008, 
  '', 
  '2011-04-27 17:19:31', 
  '192.168.1.101'
), (
  209, 
  '13', 
  'DPP', 
  73635, 
  '', 
  '2011-04-27 17:19:31', 
  '192.168.1.101'
), (
  210, 
  '13', 
  'ACN', 
  39545, 
  '', 
  '2011-04-27 17:19:31', 
  '192.168.1.101'
), (
  211, 
  '13', 
  'PPA', 
  27866, 
  '', 
  '2011-04-27 17:19:31', 
  '192.168.1.101'
), (
  212, 
  '13', 
  'CDC', 
  20694, 
  '', 
  '2011-04-27 17:19:31', 
  '192.168.1.101'
), (
  213, 
  '13', 
  'JP', 
  19871, 
  '', 
  '2011-04-27 17:19:31', 
  '192.168.1.101'
), (
  214, 
  '13', 
  'ANPP', 
  37271, 
  '', 
  '2011-04-27 17:19:31', 
  '192.168.1.101'
), (
  215, 
  '13', 
  'LABO', 
  26745, 
  '', 
  '2011-04-27 17:19:31', 
  '192.168.1.101'
), (
  216, 
  '13', 
  'CPP', 
  21912, 
  '', 
  '2011-04-27 17:19:31', 
  '192.168.1.101'
), (
  217, 
  '14', 
  'PDP', 
  37314, 
  '', 
  '2011-04-27 18:12:46', 
  '192.168.1.101'
), (
  218, 
  '14', 
  'DPP', 
  85226, 
  '', 
  '2011-04-27 18:12:46', 
  '192.168.1.101'
), (
  219, 
  '14', 
  'ACN', 
  16404, 
  '', 
  '2011-04-27 18:12:46', 
  '192.168.1.101'
), (
  220, 
  '14', 
  'PPA', 
  39399, 
  '', 
  '2011-04-27 18:12:46', 
  '192.168.1.101'
), (
  221, 
  '14', 
  'CDC', 
  47780, 
  '', 
  '2011-04-27 18:12:46', 
  '192.168.1.101'
), (
  222, 
  '14', 
  'JP', 
  20705, 
  '', 
  '2011-04-27 18:12:46', 
  '192.168.1.101'
), (
  223, 
  '14', 
  'ANPP', 
  60182, 
  '', 
  '2011-04-27 18:12:46', 
  '192.168.1.101'
), (
  224, 
  '14', 
  'LABO', 
  38795, 
  '', 
  '2011-04-27 18:12:46', 
  '192.168.1.101'
), (
  225, 
  '14', 
  'CPP', 
  13430, 
  '', 
  '2011-04-27 18:12:46', 
  '192.168.1.101'
), (
  226, 
  '15', 
  'PDP', 
  61377, 
  '', 
  '2011-04-27 18:42:23', 
  '192.168.1.101'
), (
  227, 
  '15', 
  'DPP', 
  26135, 
  '', 
  '2011-04-27 18:42:23', 
  '192.168.1.101'
), (
  228, 
  '15', 
  'ACN', 
  15329, 
  '', 
  '2011-04-27 18:42:23', 
  '192.168.1.101'
), (
  229, 
  '15', 
  'PPA', 
  36076, 
  '', 
  '2011-04-27 18:42:23', 
  '192.168.1.101'
), (
  230, 
  '15', 
  'CDC', 
  34390, 
  '', 
  '2011-04-27 18:42:23', 
  '192.168.1.101'
), (
  231, 
  '15', 
  'JP', 
  63720, 
  '', 
  '2011-04-27 18:42:23', 
  '192.168.1.101'
), (
  232, 
  '15', 
  'ANPP', 
  15432, 
  '', 
  '2011-04-27 18:42:23', 
  '192.168.1.101'
), (
  233, 
  '15', 
  'LABO', 
  85999, 
  '', 
  '2011-04-27 18:42:23', 
  '192.168.1.101'
), (
  234, 
  '15', 
  'CPP', 
  83697, 
  '', 
  '2011-04-27 18:42:23', 
  '192.168.1.101'
), (
  235, 
  '32', 
  'PDP', 
  95207, 
  '', 
  '2011-04-27 19:14:19', 
  '192.168.1.101'
), (
  236, 
  '32', 
  'DPP', 
  63000, 
  '', 
  '2011-04-27 19:14:19', 
  '192.168.1.101'
), (
  237, 
  '32', 
  'ACN', 
  75264, 
  '', 
  '2011-04-27 19:14:19', 
  '192.168.1.101'
), (
  238, 
  '32', 
  'PPA', 
  22286, 
  '', 
  '2011-04-27 19:14:19', 
  '192.168.1.101'
), (
  239, 
  '32', 
  'CDC', 
  85634, 
  '', 
  '2011-04-27 19:14:19', 
  '192.168.1.101'
), (
  240, 
  '32', 
  'JP', 
  61313, 
  '', 
  '2011-04-27 19:14:19', 
  '192.168.1.101'
), (
  241, 
  '32', 
  'ANPP', 
  49665, 
  '', 
  '2011-04-27 19:14:19', 
  '192.168.1.101'
), (
  242, 
  '32', 
  'LABO', 
  64382, 
  '', 
  '2011-04-27 19:14:19', 
  '192.168.1.101'
), (
  243, 
  '32', 
  'CPP', 
  72914, 
  '', 
  '2011-04-27 19:14:19', 
  '192.168.1.101'
);


create table if not exists "announced_pu_results" (
  "result_id" integer not null,
  "polling_unit_uniqueid" varchar(50) not null,
  "party_abbreviation" char(4) not null,
  "party_score" integer not null,
  "entered_by_user" varchar(50) not null,
  "date_entered" timestamp not null,
  "user_ip_address" varchar(50) not null,
  primary key ("result_id")
)
insert into "announced_pu_results" (
  "result_id",
  "polling_unit_uniqueid",
  "party_abbreviation",
  "party_score",
  "entered_by_user",
  "date_entered",
  "user_ip_address"
)
values (
  111, 
  '8', 
  'PDP', 
  802, 
  'Bose', 
  '2011-04-26 15:44:03', 
  '192.168.1.101'
), (
  112, 
  '8', 
  'DPP', 
  719, 
  'Bose', 
  '2011-04-26 15:44:03', 
  '192.168.1.101'
), (
  113, 
  '8', 
  'ACN', 
  416, 
  'Bose', 
  '2011-04-26 15:44:03', 
  '192.168.1.101'
), (
  114, 
  '8', 
  'PPA', 
  939, 
  'Bose', 
  '2011-04-26 15:44:03', 
  '192.168.1.101'
), (
  115, 
  '8', 
  'CDC', 
  394, 
  'Bose', 
  '2011-04-26 15:44:03', 
  '192.168.1.101'
), (
  116, 
  '8', 
  'JP', 
  99, 
  'Bose', 
  '2011-04-26 15:44:03', 
  '192.168.1.101'
), (
  117, 
  '9', 
  'PDP', 
  285, 
  'Joseph Ogurume', 
  '2011-04-26 16:20:49', 
  '192.168.1.101'
), (
  118, 
  '9', 
  'DPP', 
  1254, 
  'Joseph Ogurume', 
  '2011-04-26 16:20:49', 
  '192.168.1.101'
), (
  119, 
  '9', 
  'ACN', 
  1032, 
  'Joseph Ogurume', 
  '2011-04-26 16:20:49', 
  '192.168.1.101'
), (
  120, 
  '9', 
  'PPA', 
  179, 
  'Joseph Ogurume', 
  '2011-04-26 16:20:49', 
  '192.168.1.101'
), (
  121, 
  '9', 
  'CDC', 
  752, 
  'Joseph Ogurume', 
  '2011-04-26 16:20:49', 
  '192.168.1.101'
), (
  122, 
  '9', 
  'JP', 
  172, 
  'Joseph Ogurume', 
  '2011-04-26 16:20:49', 
  '192.168.1.101'
), (
  123, 
  '10', 
  'PDP', 
  561, 
  'Kingsley', 
  '2011-04-26 16:52:26', 
  '192.168.1.101'
), (
  124, 
  '10', 
  'DPP', 
  482, 
  'Kingsley', 
  '2011-04-26 16:52:26', 
  '192.168.1.101'
), (
  125, 
  '10', 
  'ACN', 
  298, 
  'Kingsley', 
  '2011-04-26 16:52:26', 
  '192.168.1.101'
), (
  126, 
  '10', 
  'PPA', 
  833, 
  'Kingsley', 
  '2011-04-26 16:52:26', 
  '192.168.1.101'
), (
  127, 
  '10', 
  'CDC', 
  221, 
  'Kingsley', 
  '2011-04-26 16:52:26', 
  '192.168.1.101'
), (
  128, 
  '10', 
  'JP', 
  557, 
  'Kingsley', 
  '2011-04-26 16:52:26', 
  '192.168.1.101'
), (
  129, 
  '11', 
  'PDP', 
  621, 
  '', 
  '2011-04-26 17:06:28', 
  '192.168.1.101'
), (
  130, 
  '11', 
  'DPP', 
  637, 
  '', 
  '2011-04-26 17:06:28', 
  '192.168.1.101'
), (
  131, 
  '11', 
  'ACN', 
  916, 
  '', 
  '2011-04-26 17:06:28', 
  '192.168.1.101'
), (
  132, 
  '11', 
  'PPA', 
  621, 
  '', 
  '2011-04-26 17:06:28', 
  '192.168.1.101'
), (
  133, 
  '11', 
  'CDC', 
  306, 
  '', 
  '2011-04-26 17:06:28', 
  '192.168.1.101'
), (
  134, 
  '11', 
  'JP', 
  617, 
  '', 
  '2011-04-26 17:06:28', 
  '192.168.1.101'
), (
  135, 
  '12', 
  'PDP', 
  306, 
  '', 
  '2011-04-26 17:07:29', 
  '192.168.1.101'
), (
  136, 
  '12', 
  'DPP', 
  1019, 
  '', 
  '2011-04-26 17:07:29', 
  '192.168.1.101'
), (
  137, 
  '12', 
  'ACN', 
  1039, 
  '', 
  '2011-04-26 17:07:29', 
  '192.168.1.101'
), (
  138, 
  '12', 
  'PPA', 
  1046, 
  '', 
  '2011-04-26 17:07:29', 
  '192.168.1.101'
), (
  139, 
  '12', 
  'CDC', 
  83, 
  '', 
  '2011-04-26 17:07:29', 
  '192.168.1.101'
), (
  140, 
  '12', 
  'JP', 
  229, 
  '', 
  '2011-04-26 17:07:29', 
  '192.168.1.101'
), (
  141, 
  '13', 
  'PDP', 
  853, 
  'ajeke jerry christopher ', 
  '2011-04-26 17:20:39', 
  '192.168.1.115'
), (
  142, 
  '13', 
  'DPP', 
  745, 
  'ajeke jerry christopher ', 
  '2011-04-26 17:20:39', 
  '192.168.1.115'
), (
  143, 
  '13', 
  'ACN', 
  804, 
  'ajeke jerry christopher ', 
  '2011-04-26 17:20:39', 
  '192.168.1.115'
), (
  144, 
  '13', 
  'PPA', 
  542, 
  'ajeke jerry christopher ', 
  '2011-04-26 17:20:39', 
  '192.168.1.115'
), (
  145, 
  '13', 
  'CDC', 
  246, 
  'ajeke jerry christopher ', 
  '2011-04-26 17:20:39', 
  '192.168.1.115'
), (
  146, 
  '13', 
  'JP', 
  555, 
  'ajeke jerry christopher ', 
  '2011-04-26 17:20:39', 
  '192.168.1.115'
), (
  147, 
  '13', 
  'ANPP', 
  995, 
  'ajeke jerry christopher ', 
  '2011-04-26 17:20:39', 
  '192.168.1.115'
), (
  148, 
  '10', 
  'PDP', 
  236, 
  'Joseph Ogurume-christopher', 
  '2011-04-26 17:26:20', 
  '192.168.1.115'
), (
  149, 
  '10', 
  'DPP', 
  1305, 
  'Joseph Ogurume-christopher', 
  '2011-04-26 17:26:20', 
  '192.168.1.115'
), (
  150, 
  '10', 
  'ACN', 
  567, 
  'Joseph Ogurume-christopher', 
  '2011-04-26 17:26:20', 
  '192.168.1.115'
), (
  151, 
  '10', 
  'PPA', 
  624, 
  'Joseph Ogurume-christopher', 
  '2011-04-26 17:26:20', 
  '192.168.1.115'
), (
  152, 
  '10', 
  'CDC', 
  375, 
  'Joseph Ogurume-christopher', 
  '2011-04-26 17:26:20', 
  '192.168.1.115'
), (
  153, 
  '10', 
  'JP', 
  952, 
  'Joseph Ogurume-christopher', 
  '2011-04-26 17:26:20', 
  '192.168.1.115'
), (
  154, 
  '10', 
  'ANPP', 
  583, 
  'Joseph Ogurume-christopher', 
  '2011-04-26 17:26:20', 
  '192.168.1.115'
), (
  155, 
  '10', 
  'LABO', 
  1012, 
  'Joseph Ogurume-christopher', 
  '2011-04-26 17:26:20', 
  '192.168.1.115'
), (
  156, 
  '15', 
  'PDP', 
  287, 
  '', 
  '2011-04-26 17:27:54', 
  '192.168.1.115'
), (
  157, 
  '15', 
  'DPP', 
  426, 
  '', 
  '2011-04-26 17:27:54', 
  '192.168.1.115'
), (
  158, 
  '15', 
  'ACN', 
  113, 
  '', 
  '2011-04-26 17:27:54', 
  '192.168.1.115'
), (
  159, 
  '15', 
  'PPA', 
  960, 
  '', 
  '2011-04-26 17:27:54', 
  '192.168.1.115'
), (
  160, 
  '15', 
  'CDC', 
  409, 
  '', 
  '2011-04-26 17:27:54', 
  '192.168.1.115'
), (
  161, 
  '15', 
  'JP', 
  117, 
  '', 
  '2011-04-26 17:27:54', 
  '192.168.1.115'
), (
  162, 
  '15', 
  'ANPP', 
  349, 
  '', 
  '2011-04-26 17:27:54', 
  '192.168.1.115'
), (
  163, 
  '15', 
  'LABO', 
  139, 
  '', 
  '2011-04-26 17:27:54', 
  '192.168.1.115'
), (
  164, 
  '16', 
  'PDP', 
  1178, 
  'bright oteri', 
  '2011-04-26 18:04:38', 
  '192.168.1.101'
), (
  165, 
  '16', 
  'DPP', 
  129, 
  'bright oteri', 
  '2011-04-26 18:04:38', 
  '192.168.1.101'
), (
  166, 
  '16', 
  'ACN', 
  406, 
  'bright oteri', 
  '2011-04-26 18:04:38', 
  '192.168.1.101'
), (
  167, 
  '16', 
  'PPA', 
  614, 
  'bright oteri', 
  '2011-04-26 18:04:38', 
  '192.168.1.101'
), (
  168, 
  '16', 
  'CDC', 
  794, 
  'bright oteri', 
  '2011-04-26 18:04:38', 
  '192.168.1.101'
), (
  169, 
  '16', 
  'JP', 
  82, 
  'bright oteri', 
  '2011-04-26 18:04:38', 
  '192.168.1.101'
), (
  170, 
  '16', 
  'ANPP', 
  981, 
  'bright oteri', 
  '2011-04-26 18:04:38', 
  '192.168.1.101'
), (
  171, 
  '16', 
  'LABO', 
  596, 
  'bright oteri', 
  '2011-04-26 18:04:38', 
  '192.168.1.101'
), (
  172, 
  '18', 
  'PDP', 
  1009, 
  'Ruheme - Christopher', 
  '2011-04-26 18:13:27', 
  '192.168.1.115'
), (
  173, 
  '18', 
  'DPP', 
  499, 
  'Ruheme - Christopher', 
  '2011-04-26 18:13:27', 
  '192.168.1.115'
), (
  174, 
  '18', 
  'ACN', 
  580, 
  'Ruheme - Christopher', 
  '2011-04-26 18:13:27', 
  '192.168.1.115'
), (
  175, 
  '18', 
  'PPA', 
  487, 
  'Ruheme - Christopher', 
  '2011-04-26 18:13:27', 
  '192.168.1.115'
), (
  176, 
  '18', 
  'CDC', 
  644, 
  'Ruheme - Christopher', 
  '2011-04-26 18:13:27', 
  '192.168.1.115'
), (
  177, 
  '18', 
  'JP', 
  709, 
  'Ruheme - Christopher', 
  '2011-04-26 18:13:27', 
  '192.168.1.115'
), (
  178, 
  '18', 
  'ANPP', 
  561, 
  'Ruheme - Christopher', 
  '2011-04-26 18:13:27', 
  '192.168.1.115'
), (
  179, 
  '18', 
  'LABO', 
  627, 
  'Ruheme - Christopher', 
  '2011-04-26 18:13:27', 
  '192.168.1.115'
), (
  180, 
  '19', 
  'PDP', 
  418, 
  'Enukpere Eric- christopher', 
  '2011-04-26 18:22:57', 
  '192.168.1.115'
), (
  181, 
  '19', 
  'DPP', 
  149, 
  'Enukpere Eric- christopher', 
  '2011-04-26 18:22:57', 
  '192.168.1.115'
), (
  182, 
  '19', 
  'ACN', 
  131, 
  'Enukpere Eric- christopher', 
  '2011-04-26 18:22:57', 
  '192.168.1.115'
), (
  183, 
  '19', 
  'PPA', 
  367, 
  'Enukpere Eric- christopher', 
  '2011-04-26 18:22:57', 
  '192.168.1.115'
), (
  184, 
  '19', 
  'CDC', 
  397, 
  'Enukpere Eric- christopher', 
  '2011-04-26 18:22:57', 
  '192.168.1.115'
), (
  185, 
  '19', 
  'JP', 
  834, 
  'Enukpere Eric- christopher', 
  '2011-04-26 18:22:57', 
  '192.168.1.115'
), (
  186, 
  '19', 
  'ANPP', 
  926, 
  'Enukpere Eric- christopher', 
  '2011-04-26 18:22:57', 
  '192.168.1.115'
), (
  187, 
  '19', 
  'LABO', 
  77, 
  'Enukpere Eric- christopher', 
  '2011-04-26 18:22:57', 
  '192.168.1.115'
), (
  188, 
  '19', 
  'CPP', 
  560, 
  'Enukpere Eric- christopher', 
  '2011-04-26 18:22:57', 
  '192.168.1.115'
), (
  189, 
  '20', 
  'PDP', 
  731, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:25:24', 
  '192.168.1.115'
), (
  190, 
  '20', 
  'DPP', 
  832, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:25:24', 
  '192.168.1.115'
), (
  191, 
  '20', 
  'ACN', 
  575, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:25:24', 
  '192.168.1.115'
), (
  192, 
  '20', 
  'PPA', 
  326, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:25:24', 
  '192.168.1.115'
), (
  193, 
  '20', 
  'CDC', 
  856, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:25:24', 
  '192.168.1.115'
), (
  194, 
  '20', 
  'JP', 
  253, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:25:24', 
  '192.168.1.115'
), (
  195, 
  '20', 
  'ANPP', 
  647, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:25:24', 
  '192.168.1.115'
), (
  196, 
  '20', 
  'LABO', 
  426, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:25:24', 
  '192.168.1.115'
), (
  197, 
  '20', 
  'CPP', 
  136, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:25:24', 
  '192.168.1.115'
), (
  198, 
  '21', 
  'PDP', 
  480, 
  'ajeke jerry-christopher ', 
  '2011-04-26 18:27:32', 
  '192.168.1.115'
), (
  199, 
  '21', 
  'DPP', 
  854, 
  'ajeke jerry-christopher ', 
  '2011-04-26 18:27:32', 
  '192.168.1.115'
), (
  200, 
  '21', 
  'ACN', 
  433, 
  'ajeke jerry-christopher ', 
  '2011-04-26 18:27:32', 
  '192.168.1.115'
), (
  201, 
  '21', 
  'PPA', 
  181, 
  'ajeke jerry-christopher ', 
  '2011-04-26 18:27:32', 
  '192.168.1.115'
), (
  202, 
  '21', 
  'CDC', 
  560, 
  'ajeke jerry-christopher ', 
  '2011-04-26 18:27:32', 
  '192.168.1.115'
), (
  203, 
  '21', 
  'JP', 
  205, 
  'ajeke jerry-christopher ', 
  '2011-04-26 18:27:32', 
  '192.168.1.115'
), (
  204, 
  '21', 
  'ANPP', 
  295, 
  'ajeke jerry-christopher ', 
  '2011-04-26 18:27:32', 
  '192.168.1.115'
), (
  205, 
  '21', 
  'LABO', 
  805, 
  'ajeke jerry-christopher ', 
  '2011-04-26 18:27:32', 
  '192.168.1.115'
), (
  206, 
  '21', 
  'CPP', 
  92, 
  'ajeke jerry-christopher ', 
  '2011-04-26 18:27:32', 
  '192.168.1.115'
), (
  207, 
  '24', 
  'PDP', 
  1422, 
  'Tenison nana- christoper', 
  '2011-04-26 18:33:01', 
  '192.168.1.115'
), (
  208, 
  '24', 
  'DPP', 
  666, 
  'Tenison nana- christoper', 
  '2011-04-26 18:33:01', 
  '192.168.1.115'
), (
  209, 
  '24', 
  'ACN', 
  202, 
  'Tenison nana- christoper', 
  '2011-04-26 18:33:01', 
  '192.168.1.115'
), (
  210, 
  '24', 
  'PPA', 
  1017, 
  'Tenison nana- christoper', 
  '2011-04-26 18:33:01', 
  '192.168.1.115'
), (
  211, 
  '24', 
  'CDC', 
  431, 
  'Tenison nana- christoper', 
  '2011-04-26 18:33:01', 
  '192.168.1.115'
), (
  212, 
  '24', 
  'JP', 
  51, 
  'Tenison nana- christoper', 
  '2011-04-26 18:33:01', 
  '192.168.1.115'
), (
  213, 
  '24', 
  'ANPP', 
  910, 
  'Tenison nana- christoper', 
  '2011-04-26 18:33:01', 
  '192.168.1.115'
), (
  214, 
  '24', 
  'LABO', 
  349, 
  'Tenison nana- christoper', 
  '2011-04-26 18:33:01', 
  '192.168.1.115'
), (
  215, 
  '24', 
  'CPP', 
  966, 
  'Tenison nana- christoper', 
  '2011-04-26 18:33:01', 
  '192.168.1.115'
), (
  216, 
  '23', 
  'PDP', 
  1391, 
  'Tenison nana- christoper', 
  '2011-04-26 18:34:47', 
  '192.168.1.115'
), (
  217, 
  '23', 
  'DPP', 
  721, 
  'Tenison nana- christoper', 
  '2011-04-26 18:34:47', 
  '192.168.1.115'
), (
  218, 
  '23', 
  'ACN', 
  269, 
  'Tenison nana- christoper', 
  '2011-04-26 18:34:47', 
  '192.168.1.115'
), (
  219, 
  '23', 
  'PPA', 
  176, 
  'Tenison nana- christoper', 
  '2011-04-26 18:34:47', 
  '192.168.1.115'
), (
  220, 
  '23', 
  'CDC', 
  1031, 
  'Tenison nana- christoper', 
  '2011-04-26 18:34:47', 
  '192.168.1.115'
), (
  221, 
  '23', 
  'JP', 
  578, 
  'Tenison nana- christoper', 
  '2011-04-26 18:34:47', 
  '192.168.1.115'
), (
  222, 
  '23', 
  'ANPP', 
  746, 
  'Tenison nana- christoper', 
  '2011-04-26 18:34:47', 
  '192.168.1.115'
), (
  223, 
  '23', 
  'LABO', 
  943, 
  'Tenison nana- christoper', 
  '2011-04-26 18:34:47', 
  '192.168.1.115'
), (
  224, 
  '23', 
  'CPP', 
  428, 
  'Tenison nana- christoper', 
  '2011-04-26 18:34:47', 
  '192.168.1.115'
), (
  225, 
  '22', 
  'PDP', 
  920, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:35:09', 
  '192.168.1.114'
), (
  226, 
  '22', 
  'DPP', 
  986, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:35:09', 
  '192.168.1.114'
), (
  227, 
  '22', 
  'ACN', 
  1048, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:35:09', 
  '192.168.1.114'
), (
  228, 
  '22', 
  'PPA', 
  257, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:35:09', 
  '192.168.1.114'
), (
  229, 
  '22', 
  'CDC', 
  93, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:35:09', 
  '192.168.1.114'
), (
  230, 
  '22', 
  'JP', 
  642, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:35:09', 
  '192.168.1.114'
), (
  231, 
  '22', 
  'ANPP', 
  885, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:35:09', 
  '192.168.1.114'
), (
  232, 
  '22', 
  'LABO', 
  428, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:35:09', 
  '192.168.1.114'
), (
  233, 
  '22', 
  'CPP', 
  445, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:35:09', 
  '192.168.1.114'
), (
  234, 
  '25', 
  'PDP', 
  1075, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:45:19', 
  '192.168.1.115'
), (
  235, 
  '25', 
  'DPP', 
  68, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:45:19', 
  '192.168.1.115'
), (
  236, 
  '25', 
  'ACN', 
  617, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:45:19', 
  '192.168.1.115'
), (
  237, 
  '25', 
  'PPA', 
  831, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:45:19', 
  '192.168.1.115'
), (
  238, 
  '25', 
  'CDC', 
  253, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:45:19', 
  '192.168.1.115'
), (
  239, 
  '25', 
  'JP', 
  721, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:45:19', 
  '192.168.1.115'
), (
  240, 
  '25', 
  'ANPP', 
  798, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:45:19', 
  '192.168.1.115'
), (
  241, 
  '25', 
  'LABO', 
  774, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:45:19', 
  '192.168.1.115'
), (
  242, 
  '25', 
  'CPP', 
  428, 
  'Chris Tonne- christopher', 
  '2011-04-26 18:45:19', 
  '192.168.1.115'
), (
  243, 
  '26', 
  'PDP', 
  899, 
  'CHRIS TONWE, OGUNMERU DARE', 
  '2011-04-26 18:46:01', 
  '192.168.1.114'
), (
  244, 
  '26', 
  'DPP', 
  490, 
  'CHRIS TONWE, OGUNMERU DARE', 
  '2011-04-26 18:46:01', 
  '192.168.1.114'
), (
  245, 
  '26', 
  'ACN', 
  107, 
  'CHRIS TONWE, OGUNMERU DARE', 
  '2011-04-26 18:46:01', 
  '192.168.1.114'
), (
  246, 
  '26', 
  'PPA', 
  1014, 
  'CHRIS TONWE, OGUNMERU DARE', 
  '2011-04-26 18:46:01', 
  '192.168.1.114'
), (
  247, 
  '26', 
  'CDC', 
  697, 
  'CHRIS TONWE, OGUNMERU DARE', 
  '2011-04-26 18:46:01', 
  '192.168.1.114'
), (
  248, 
  '26', 
  'JP', 
  395, 
  'CHRIS TONWE, OGUNMERU DARE', 
  '2011-04-26 18:46:01', 
  '192.168.1.114'
), (
  249, 
  '26', 
  'ANPP', 
  834, 
  'CHRIS TONWE, OGUNMERU DARE', 
  '2011-04-26 18:46:01', 
  '192.168.1.114'
), (
  250, 
  '26', 
  'LABO', 
  932, 
  'CHRIS TONWE, OGUNMERU DARE', 
  '2011-04-26 18:46:01', 
  '192.168.1.114'
), (
  251, 
  '26', 
  'CPP', 
  109, 
  'CHRIS TONWE, OGUNMERU DARE', 
  '2011-04-26 18:46:01', 
  '192.168.1.114'
), (
  252, 
  '27', 
  'PDP', 
  1422, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:47:53', 
  '192.168.1.114'
), (
  253, 
  '27', 
  'DPP', 
  121, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:47:53', 
  '192.168.1.114'
), (
  254, 
  '27', 
  'ACN', 
  407, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:47:53', 
  '192.168.1.114'
), (
  255, 
  '27', 
  'PPA', 
  654, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:47:53', 
  '192.168.1.114'
), (
  256, 
  '27', 
  'CDC', 
  1001, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:47:53', 
  '192.168.1.114'
), (
  257, 
  '27', 
  'JP', 
  991, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:47:53', 
  '192.168.1.114'
), (
  258, 
  '27', 
  'ANPP', 
  903, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:47:53', 
  '192.168.1.114'
), (
  259, 
  '27', 
  'LABO', 
  492, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:47:53', 
  '192.168.1.114'
), (
  260, 
  '27', 
  'CPP', 
  700, 
  'BRIGHT OTERI, OGUNMERU DARE', 
  '2011-04-26 18:47:53', 
  '192.168.1.114'
);


create table if not exists "announced_state_results" (
  "result_id" integer not null,
  "state_name" varchar(50) not null,
  "party_abbreviation" char(4) not null,
  "party_score" integer not null,
  "entered_by_user" varchar(50) not null,
  "date_entered" timestamp not null,
  "user_ip_address" varchar(50) not null,
  primary key ("result_id")
)


create table if not exists "announced_ward_results" (
  "result_id" integer not null,
  "ward_name" varchar(50) not null,
  "party_abbreviation" char(4) not null,
  "party_score" integer not null,
  "entered_by_user" varchar(50) not null,
  "date_entered" timestamp not null,
  "user_ip_address" varchar(50) not null,
  primary key ("result_id")
)