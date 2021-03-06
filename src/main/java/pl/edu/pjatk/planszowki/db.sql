SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone="+00:00";

CREATE TABLE author (
                               id int(11) NOT NULL,
                               name varchar(30),
                               surname varchar(30),
                               middle_name varchar(30)
);

CREATE TABLE author_game (
                                    author_id int(11),
                                    game_id int(11)
);

CREATE TABLE award (
                              id int(11) NOT NULL,
                              name varchar(50) NOT NULL,
                              year int(11),
                              game_id int(11)
);

CREATE TABLE category (
                                 id int(11) NOT NULL,
                                 name varchar(30)
);

CREATE TABLE category_game (
                                      category_id int(11),
                                      game_id int(11)
);

CREATE TABLE game (
                             title varchar(65),
                             publisher_id bigint NOT NULL,
                             `shortDescription` varchar(70),
                             `longDescription` text,
                             language varchar(5),
                             `playersMin` int(11),
                             `playersMax` int(11),
                             `timeMin` int(11),
                             `timeMax` int(11),
                             `ageMin` int(11),
                             `ageMax` int(11),
                             id int(11) NOT NULL,
                             rating double precision,
                             weight double precision,
                             `releaseDate` date
);

CREATE TABLE illustrator (
                                    id int(11) NOT NULL,
                                    name varchar(30),
                                    middle_name varchar(30),
                                    surname varchar(30)
);

CREATE TABLE illustrator_game (
                                         illustrator_id int(11),
                                         game_id int(11)
);

CREATE TABLE `order` (
                                id int(11) NOT NULL,
                                user_id int(11) NOT NULL,
                                `orderDate` date,
                                `status` varchar(10)
);

CREATE TABLE order_game (
                                   order_id int(11) NOT NULL,
                                   game_id int(11) NOT NULL,
                                   `orderQuantity` int(11)
);

CREATE TABLE publisher (
                                  id int(11) NOT NULL,
                                  name varchar(65)
);

CREATE TABLE storage (
                                id int(11) NOT NULL,
                                game_id int(11) NOT NULL,
                                quantity int(11) NOT NULL,
                                price double precision,
                                archived bool
);

CREATE TABLE `user` (
                               id int(11) NOT NULL,
                               email text,
                               `phoneNumber` varchar(15),
                               username varchar(30) NOT NULL,
                               password text NOT NULL,
                               name varchar(30),
                               surname varchar(50),
                               country varchar(80),
                               city varchar(80),
                               `adressLine1` varchar(80),
                               `postalCode` varchar(6),
                               regular bool
);

ALTER TABLE author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id);
ALTER TABLE award
    ADD CONSTRAINT award_pkey PRIMARY KEY (id);
ALTER TABLE category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
ALTER TABLE game
    ADD CONSTRAINT id PRIMARY KEY (id);
ALTER TABLE illustrator
    ADD CONSTRAINT illustrator_pkey PRIMARY KEY (id);
ALTER TABLE `order`
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);
ALTER TABLE publisher
    ADD CONSTRAINT publisher_pkey PRIMARY KEY (id);
ALTER TABLE storage
    ADD CONSTRAINT storage_pkey PRIMARY KEY (id);
ALTER TABLE `user`
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
INSERT INTO publisher (id, name) VALUES (1, 'rebel');
INSERT INTO publisher (id, name) VALUES (2, 'Days of Wonder');
INSERT INTO publisher (id, name) VALUES (3, 'mattel');
INSERT INTO publisher (id, name) VALUES (4, 'What the frog');
INSERT INTO publisher (id, name) VALUES (5, 'Black Monk');
INSERT INTO publisher (id, name) VALUES (6, 'Awaken Realms');
INSERT INTO publisher (id, name) VALUES (7, 'FryxGames');

-- authors --
INSERT INTO author (id, name, surname) VALUES (1, 'Denis', 'Blanchot');
INSERT INTO author (id, name, surname) VALUES (2, 'Guillaume', 'Gille-Naves');
INSERT INTO author (id, name, surname) VALUES (3, 'Igor', 'Polouchine');
INSERT INTO author (id, name, surname) VALUES (4, 'Krzysztof', 'G??o??nicki');
INSERT INTO author (id, name, surname) VALUES (5, 'Adam', 'Kwapi??ski');
INSERT INTO author (id, name, surname) VALUES (6, 'Alan', 'R. Moon');
INSERT INTO author (id, name, surname) VALUES (7, 'Matthew', 'Inman');
INSERT INTO author (id, name, surname) VALUES (8, 'Vlaada', 'Chv??til');
INSERT INTO author (id, name, surname) VALUES (9, 'Ramy', 'Badie');
INSERT INTO author (id, name, surname) VALUES (10, 'Jacob', 'Fryxelius');
INSERT INTO author (id, name, surname) VALUES (11, 'Steve Jackson Games', null);
INSERT INTO author (id, name, surname) VALUES (12, 'Marc', 'Andr??');

-- illustrators --
INSERT INTO illustrator (id, name, surname) VALUES (1, 'Katarzyna', 'Malinowska');
INSERT INTO illustrator (id, name, surname) VALUES (2, 'Piotr', 'Foksowicz');
INSERT INTO illustrator (id, name, surname) VALUES (3, 'Ewa', 'Labak');
INSERT INTO illustrator (id, name, surname) VALUES (4, 'Patryk', 'J??draszek');
INSERT INTO illustrator (id, name, surname) VALUES (5, 'Pawe??', 'Samborski');
INSERT INTO illustrator (id, name, surname) VALUES (6, 'Piotr', 'Gacek');
INSERT INTO illustrator (id, name, surname) VALUES (7, 'Andrzej', 'P????toranos');
INSERT INTO illustrator (id, name, surname) VALUES (8, 'Matthew', 'Inman');
INSERT INTO illustrator (id, name, surname) VALUES (9, 'Tom????', 'Ku??erovsk??');
INSERT INTO illustrator (id, name, surname) VALUES (10, 'Ramy', 'Badie');
INSERT INTO illustrator (id, name, surname) VALUES (11, 'Isaac', 'Fryxelius');
INSERT INTO illustrator (id, name, surname) VALUES (12, 'Pascal', 'Quidault');

-- categories --
INSERT INTO category (id, name) VALUES (1, 'zr??czno??ciowa');
INSERT INTO category (id, name) VALUES (2, 'karciana');
INSERT INTO category (id, name) VALUES (3, 'edukacyjna');
INSERT INTO category (id, name) VALUES (4, 'odnajdowanie wzorc??w');
INSERT INTO category (id, name) VALUES (5, 'sport');
INSERT INTO category (id, name) VALUES (6, 'fantasy');
INSERT INTO category (id, name) VALUES (7, 'science fiction');
INSERT INTO category (id, name) VALUES (8, 'podr????e');
INSERT INTO category (id, name) VALUES (9, 'familijna');
INSERT INTO category (id, name) VALUES (10, 'strategiczna');
INSERT INTO category (id, name) VALUES (11, 'imprezowa');
INSERT INTO category (id, name) VALUES (12, 'towarzyska');
INSERT INTO category (id, name) VALUES (13, 'przygodowa');
INSERT INTO category (id, name) VALUES (14, 'horror');
INSERT INTO category (id, name) VALUES (15, 'ekonomiczna');

-- games -----
INSERT INTO game (id, `title`, `publisher_id`, `shortDescription`, `longDescription`, `language`, `playersMin`, `playersMax`, `timeMin`, `timeMax`, `ageMin`, `weight`, `releaseDate`)
VALUES (1, 'Dobble', 1, 'Gra, kt??ra rozkr??ci ka??d?? imprez??!', 'Sp??jrz na pierwsz?? kart??, kt??r?? trzymasz w r??ku oraz na t??, kt??ra le??y na ??rodku sto??u. Znajd?? na nich wsp??lny symbol, nazwij go i szybko pozb??d?? si?? swojego kartonika. Teraz nast??pny! Tylko nie zw??tp, ka??da karta ????czy si?? z inn?? zawsze tylko jednym symbolem! Dobble to rozrywka absolutnie dla ka??dego - gra nadaje si?? zar??wno do zabawy z dzie??mi, jak i na imprezy doros??ych. 55 kolorowych kart zamkni??tych jest w solidnej, metalowej puszce, dzi??ki czemu ??atwo zabra?? Dobble ze sob?? i gra?? absolutnie wsz??dzie: w poczekalni u lekarza, w poci??gu, na wycieczce??? ',
        'pl', 2, 8, 5, 10, 6, 0.22, '01/01/2011');
INSERT INTO author_game (`author_id`, `game_id`) VALUES (1,1);
INSERT INTO author_game (`author_id`, `game_id`) VALUES (2,1);
INSERT INTO author_game (`author_id`, `game_id`) VALUES (3,1);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (1,1);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (2,1);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (3,1);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (4,1);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (5,1);

INSERT INTO game (id, `title`, `publisher_id`, `shortDescription`, `longDescription`, `language`, `playersMin`, `playersMax`, `timeMin`, `timeMax`, `ageMin`, `weight`, `releaseDate`)
VALUES (2, 'Elekt', 4, 'Cesarz jest wyczerpany...', 'Elekt to taktyczna gra karciana dla 2-4 os??b utrzymana w stylistyce dark fantasy. Gracze wcielaj?? si?? w pretendent??w do tronu mrocznego Dominatu Ebionit??w. Aby zosta?? nowym w??adc??, b??dziecie przejmowa?? w??adz?? i spiskowa??. B??dziecie przywo??ywa?? upiory i s??ugi ciemno??ci, aby zasila?? ich moce ??arem. Najprzebieglejszy z Was zasi??dzie na szczycie Wie??y Dzwon??w.',
        'pl', 2, 4, 60, 90, 16, 0.5, '23/11/2020');
INSERT INTO author_game (`author_id`, `game_id`) VALUES (4, 2);
INSERT INTO illustrator_game (`illustrator_id`, `game_id`) VALUES (1, 2);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (6,2);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (2,2);

INSERT INTO game (id, `title`, `publisher_id`, `shortDescription`, `longDescription`, `language`, `playersMin`, `playersMax`, `timeMin`, `timeMax`, `ageMin`, `weight`, `releaseDate`)
VALUES (3, 'Wsi?????? do Poci??gu: Europa', 2, 'Bezkonkurencyjna gra familijna z map?? Europy', 'Od urwistych wzg??rz Edynburga po s??oneczne nabrze??a Stambu??u, z dusznych alej Pampeluny do wietrznego Berlina - Wsi?????? do poci??gu: Europa zabierze ci?? w wielk?? podr???? przez wielkie miasta Starego Kontynentu u progu zesz??ego stulecia.Czy odwa??ysz si?? przeby?? mroczne tunele Szwajcarii?',
        'pl', 2, 5, 60, 90, 8, 1.415, '01/08/2019');
INSERT INTO author_game (`author_id`, `game_id`) VALUES (6, 3);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (8,3);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (2,3);

INSERT INTO game (id, `title`, `publisher_id`, `shortDescription`, `longDescription`, `language`, `playersMin`, `playersMax`, `timeMin`, `timeMax`, `ageMin`, `weight`, `releaseDate`)
VALUES (4, 'Nemesis', 1, 'Survival sci-fi game', 'Nemesis is a 1-5 player survival sci-fi game where players are woken up from hibernation as a crew of a space ship. The emergency procedure states that there is a critical system failure and the space ship can`t continue its cruise.',
        'en', 1, 5, 90, 180, 12, 3.9, '24/06/2019');
INSERT INTO author_game (`author_id`, `game_id`) VALUES (5, 4);
INSERT INTO illustrator_game (`illustrator_id`, `game_id`) VALUES (2, 4);
INSERT INTO illustrator_game (`illustrator_id`, `game_id`) VALUES (3, 4);
INSERT INTO illustrator_game (`illustrator_id`, `game_id`) VALUES (4, 4);
INSERT INTO illustrator_game (`illustrator_id`, `game_id`) VALUES (5, 4);
INSERT INTO illustrator_game (`illustrator_id`, `game_id`) VALUES (6, 4);
INSERT INTO illustrator_game (`illustrator_id`, `game_id`) VALUES (7, 4);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (7,4);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (10,4);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (14,4);

INSERT INTO game (id, `title`, `publisher_id`, `shortDescription`, `longDescription`, `language`, `playersMin`, `playersMax`, `timeMin`, `timeMax`, `ageMin`, `weight`, `releaseDate`)
VALUES (5, 'Eksploduj??ce Kotki', 1, 'Dla kochaj??cych koty i wybuchy', 'Eksploduj??ce Kotki to nap??dzana kociakami odmiana rosyjskiej ruletki. Gracze ci??gn?? co tur?? po karcie, a?? do momentu dobrania eksploduj??cego kota - wtedy nieszcz????nik wybucha i ginie, a gra si?? ko??czy.',
        'pl', 2, 5, 15, null, 12, 0.21, '16/11/2017');
INSERT INTO author_game (`author_id`, `game_id`) VALUES (7, 5);
INSERT INTO illustrator_game (`illustrator_id`, `game_id`) VALUES (8, 5);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (1,5);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (2,5);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (9,5);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (11,5);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (12,5);

INSERT INTO game (id, `title`, `publisher_id`, `shortDescription`, `longDescription`, `language`, `playersMin`, `playersMax`, `timeMin`, `timeMax`, `ageMin`, `weight`, `releaseDate`)
VALUES (6, 'Tajniacy', 1, 'Przednia, zespo??owa zabawa dedukcyjna!', 'Dwie dru??yny, kt??rym przewodzi dw??ch Szef??w Wywiadu, pr??buj?? jak najszybciej nawi??za?? kontakt ze wszystkimi swoimi agentami.',
        'pl', 2, 8, 10, null, 14, 0.56, '03/03/2016');
INSERT INTO author_game (`author_id`, `game_id`) VALUES (8, 6);
INSERT INTO illustrator_game (`illustrator_id`, `game_id`) VALUES (9, 6);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (2,6);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (4,6);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (9,6);

INSERT INTO game (id, `title`, `publisher_id`, `shortDescription`, `longDescription`, `language`, `playersMin`, `playersMax`, `timeMin`, `timeMax`, `ageMin`, `weight`, `releaseDate`)
VALUES (7, 'To ja go tn??!', 1, 'Przed polowaniem na potwora nale??y zebra?? dru??yn??...', 'Zbierzcie dru??yn?? bohater??w i wyruszcie na epick?? przygod?? przepe??nion?? prawdziw?? jatk??! Niech zdrada, gro??ne potwory i humor znany z Odjechanych jednoro??c??w zagoszcz?? na Waszym stole!',
        'pl', 2, 6, 30, 60, 10, 0.45, '28/04/2021');
INSERT INTO author_game (`author_id`, `game_id`) VALUES (9, 7);
INSERT INTO illustrator_game (`illustrator_id`, `game_id`) VALUES (10, 7);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (2,7);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (6,7);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (8,7);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (13,7);

INSERT INTO game (id, `title`, `publisher_id`, `shortDescription`, `longDescription`, `language`, `playersMin`, `playersMax`, `timeMin`, `timeMax`, `ageMin`, `weight`, `releaseDate`)
VALUES (8, 'Terraforming Mars', 7, 'Zmie?? Marsa w planet?? zdatn?? do ??ycia!', 'Ludzko???? rozpocz????a ekspansj?? w Uk??adzie S??onecznym. Na Marsie za??o??ono ju?? kilka niewielkich kolonii. Ich mieszka??cy s?? odgrodzeni od naturalnego ??rodowiska straszliwie zimnej, suchej i niemal pozbawionej atmosfery planety.',
        'en', 1, 5, 90, 120, 12, 1.642, '28/09/2016');
INSERT INTO author_game (`author_id`, `game_id`) VALUES (10, 8);
INSERT INTO illustrator_game (`illustrator_id`, `game_id`) VALUES (11, 8);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (7,8);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (10,8);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (15,8);

INSERT INTO game (id, `title`, `publisher_id`, `shortDescription`, `longDescription`, `language`, `playersMin`, `playersMax`, `timeMin`, `timeMax`, `ageMin`, `weight`, `releaseDate`)
VALUES (9, 'Munchkin', 5, '??wietna gra kpi??ca z RPG', 'Munchkin to niekolekcjonerska gra karciana, kt??ra oddaje urok typowej gry fabularnej bez tego ca??ego durnego odgrywania postaci. Musisz tylko zabija?? potwory i zbiera?? magiczne przedmioty!',
        'pl', 3, 5, 60, 90, 12, 0.3, '02/03/2016');
INSERT INTO author_game (`author_id`, `game_id`) VALUES (11, 9);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (2,9);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (6,9);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (12,9);

INSERT INTO game (id, `title`, `publisher_id`, `shortDescription`, `longDescription`, `language`, `playersMin`, `playersMax`, `timeMin`, `timeMax`, `ageMin`, `weight`, `releaseDate`)
VALUES (10, 'Splendor', 1, 'Kolekcjonowanie nigdy nie by??o tak uzale??niaj??ce!', 'Gracze wcielaj?? si?? w renesansowych kupc??w, kt??rzy pr??buj?? naby?? kopalnie klejnot??w, ??rodki transportu, sklepy - wszystko to w celu zdobycia jak najwi??kszego presti??u.',
        'pl', 2, 4, 30, null, 10, 1.02, '21/03/2016');
INSERT INTO author_game (`author_id`, `game_id`) VALUES (12, 10);
INSERT INTO illustrator_game (`illustrator_id`, `game_id`) VALUES (12, 10);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (2,10);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (6,10);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (9,10);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (10,10);
INSERT INTO category_game (`category_id`, `game_id`) VALUES (15,10);

-- awards
INSERT INTO award (`id`, `name`, `year`, `game_id`) VALUES (1, 'Board Game Quest Game of the Year Award', 2016, 8);
INSERT INTO award (`id`, `name`, `year`, `game_id`) VALUES (2, 'Game of the Year Award', 2018, 1);
INSERT INTO award (`id`, `name`, `year`, `game_id`) VALUES (3, 'Diana Jones Award', 2005, 3);
INSERT INTO award (`id`, `name`, `year`, `game_id`) VALUES (4, 'Spiel des Jahres', 2016, 6);
INSERT INTO award (`id`, `name`, `year`, `game_id`) VALUES (5, 'Deutscher Spiele Preis', 2016, 6);
