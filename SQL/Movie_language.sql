USE CINEMA;
DROP TABLE IF EXISTS Movie_language;

CREATE TABLE Movie_language (
	Movie_code		CHAR(9)			NOT NULL	REFERENCES Movie(Movie_code),
    Language		VARCHAR(50)		NOT NULL,
    PRIMARY KEY (Movie_code, Language)
);

INSERT INTO Movie_language (Movie_code, Language) VALUES ('m00036050', 'Finnish');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m00036050', 'Kurdish');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m01089002', 'Hungarian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m01089002', 'Tetum');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m01811816', 'Gujarati');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m01811816', 'Malagasy');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m02068345', 'Yiddish');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m02068345', 'Georgian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m03397093', 'Hiri Motu');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m03397093', 'Papiamento');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m03789410', 'Dari');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m03789410', 'Nepali');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m04560481', 'Polish');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m04560481', 'Arabic');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m04905601', 'Kazakh');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m04905601', 'Armenian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m06140924', 'Kyrgyz');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m06140924', 'Ndebele');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m06189028', 'Lao');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m06189028', 'Thai');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m07894255', 'Montenegrin');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m07894255', 'Portuguese');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m08256994', 'Tetum');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m08256994', 'Arabic');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m08269068', 'Latvian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m08269068', 'Burmese');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m10030333', 'Somali');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m10030333', 'Tsonga');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m12968902', 'Burmese');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m12968902', 'New Zealand Sign Language');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m13604066', 'Azeri');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m13604066', 'Burmese');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m14311756', 'Luxembourgish');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m14311756', 'Hindi');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m15387336', 'Northern Sotho');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m15387336', 'Dutch');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m15576089', 'Lithuanian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m15576089', 'Portuguese');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m19096654', 'Haitian Creole');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m19096654', 'Ndebele');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m19307593', 'Estonian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m19307593', 'Afrikaans');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m19932012', 'Sotho');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m19932012', 'Hindi');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m21628403', 'Romanian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m21628403', 'Hiri Motu');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m22167169', 'Gujarati');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m22167169', 'Dari');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m23274579', 'Dhivehi');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m23274579', 'Bulgarian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m23588678', 'Dhivehi');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m23588678', 'Tswana');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m23947634', 'Latvian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m23947634', 'Tamil');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m25178503', 'Guaraní');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m25178503', 'Catalan');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m26722206', 'Hebrew');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m26722206', 'English');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m26865850', 'Pashto');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m26865850', 'Korean');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m29716524', 'Guaraní');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m29716524', 'Azeri');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m31281014', 'Tsonga');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m31281014', 'Haitian Creole');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m31709442', 'Armenian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m31709442', 'Swahili');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m31930108', 'Greek');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m31930108', 'Hindi');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m33633469', 'Kannada');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m33633469', 'Swahili');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m34307611', 'Croatian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m34307611', 'Yiddish');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m34651114', 'Assamese');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m34651114', 'German');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m36098720', 'Kashmiri');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m36098720', 'Georgian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m37268580', 'Khmer');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m37268580', 'Bosnian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m39289033', 'Finnish');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m39289033', 'Malayalam');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m41003528', 'Marathi');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m41003528', 'Haitian Creole');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m41160635', 'Guaraní');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m41160635', 'Croatian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m42705030', 'Māori');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m42705030', 'Thai');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m44725767', 'Assamese');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m44725767', 'Amharic');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m45203618', 'Romanian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m45203618', 'Tswana');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m45391689', 'Czech');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m45391689', 'German');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m45836752', 'Romanian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m45836752', 'Kashmiri');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m46573100', 'Hebrew');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m46573100', 'Guaraní');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m47354433', 'Burmese');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m47354433', 'Telugu');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m48116842', 'Bosnian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m48116842', 'Hungarian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m50671370', 'Dzongkha');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m50671370', 'Croatian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m51517121', 'Albanian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m51517121', 'Greek');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m51574341', 'Lao');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m51574341', 'Telugu');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m53903586', 'Romanian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m53903586', 'Yiddish');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m54969635', 'Gujarati');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m54969635', 'Mongolian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m55300646', 'Moldovan');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m55300646', 'Ndebele');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m55319663', 'Danish');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m55319663', 'Croatian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m57301478', 'Korean');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m57301478', 'Papiamento');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m58371615', 'Hungarian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m58371615', 'Moldovan');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m58629216', 'Tajik');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m58629216', 'Indonesian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m59243291', 'Tamil');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m59243291', 'Northern Sotho');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m59455748', 'Croatian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m59455748', 'Polish');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m59551317', 'Pashto');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m59551317', 'Catalan');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m60193694', 'Zulu');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m60193694', 'Bengali');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m61271264', 'Ndebele');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m61271264', 'Bengali');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m61954213', 'Swahili');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m61954213', 'Quechua');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m62022016', 'Maltese');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m62022016', 'Georgian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m62056443', 'Dzongkha');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m62056443', 'Chinese');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m63305834', 'Māori');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m63305834', 'Dzongkha');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m64263012', 'Amharic');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m64263012', 'Māori');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m64267580', 'Malayalam');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m64267580', 'Bengali');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m65686242', 'Guaraní');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m65686242', 'Italian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m66791420', 'Marathi');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m66791420', 'Swati');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m67771403', 'Oriya');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m67771403', 'Georgian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m69670508', 'Korean');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m69670508', 'Indonesian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m69707972', 'Somali');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m69707972', 'Mongolian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m71568090', 'Sotho');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m71568090', 'French');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m72390554', 'Bengali');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m72390554', 'Hindi');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m72640766', 'Dutch');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m72640766', 'Kashmiri');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m73006990', 'Fijian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m73006990', 'Ndebele');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m78126847', 'Bislama');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m78126847', 'Kazakh');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m79541185', 'Quechua');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m79541185', 'Tswana');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m80106369', 'Latvian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m80106369', 'German');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m80552946', 'Tok Pisin');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m80552946', 'Filipino');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m80906605', 'Croatian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m80906605', 'Somali');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m81482803', 'Quechua');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m81482803', 'Estonian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m83761873', 'Estonian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m83761873', 'Burmese');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m83816154', 'Portuguese');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m83816154', 'Yiddish');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m84499891', 'Hebrew');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m84499891', 'Finnish');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m88277889', 'Sotho');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m88277889', 'Haitian Creole');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m89779930', 'Moldovan');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m89779930', 'Japanese');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m90427384', 'Dari');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m90427384', 'Filipino');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m91258168', 'Croatian');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m91258168', 'Kashmiri');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m91645119', 'Gujarati');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m91645119', 'Thai');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m92047561', 'Swedish');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m92047561', 'French');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m92432288', 'Quechua');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m92432288', 'Pashto');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m93278499', 'Montenegrin');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m93278499', 'Malay');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m93457413', 'Tsonga');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m93457413', 'Telugu');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m93653336', 'Gujarati');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m93653336', 'Hindi');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m94589713', 'Portuguese');
INSERT INTO Movie_language (Movie_code, Language) VALUES ('m94589713', 'Kurdish');
