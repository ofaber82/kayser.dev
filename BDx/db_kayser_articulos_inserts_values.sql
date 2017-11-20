use kayser_articulos;
show tables;

-- INSERSION DE VALORES:
-- insert into Marca values ('KAYSER',''),('SIMPSONS','S'),('KAYSER SUMMER',''),('BETTY BOOP',''),('HANNA BARBERA',''),('SENS','');
-- INSERT INTO Marca VALUES (NULL,'KAYSER','','',''),(NULL,'SIMPSONS','S','inicio','licencia'),(NULL,'SENS','S','fin','licencia'),(NULL,'DISNEY','D','inicio','licencia'),(NULL,'WALMART','W','fin','cliente');
INSERT INTO marca VALUES (NULL,'KAYSER','','','MARCA'),(NULL,'SIMPSONS','S','INICIO','LICENCIA'),(NULL,'SENS','S','FIN','MARCA'),(NULL,'DISNEY','D','INICIO','LICENCIA'),(NULL,'WALMART','W','FIN','CLIENTE');
SELECT * FROM Marca;
-- update marca set posicion='fin' WHERE posicion='final'

INSERT INTO Subdpto VALUES (NULL,'ACCESORIOS'),(NULL,'BABY DOLL'),(NULL,'CALCETINES'),(NULL,'CATALOGO'),(NULL,'CORSETERIA'),(NULL,'ENAGUAS'),(NULL,'INSUMOS'),(NULL,'LENCERIA'),(NULL,'LINEA CONTROL'),(NULL,'LINEA MODELADORA'),(NULL,'MATERNAL'),(NULL,'OUTLET'),(NULL,'PANTUFLAS'),(NULL,'PANTYS'),(NULL,'PERFUMERIA'),(NULL,'ROPA DEPORTIVA'),(NULL,'ROPA INTERIOR'),(NULL,'TRAJE DE BAÑO');


-- INSERT INTO Material VALUES ('ALGODÓN'),('POLAR'),('ENCAJE'),('MICROFIBRA'),('POLIAMIDA'),('SIN COSTURA'),('TULL'),('JACQUARD'),('FRANELA'),('SATIN'),('CORAL FLEECE'),('PLUSH'),('LIQUIDACION'),('TOALLA'),('TREVIRA'),('BAMBOO'),('MODAL'),('PUÑO'),('POLIESTER'),('CATALOGO'),('PLASTICO'),('PVC'),('CARTON'),('STOCK LOT'),('VISCOSA'),('ACRILICO'),('CREMA'),('FRAGANCIA');
INSERT INTO Material VALUES (NULL,'ACRILICO'),(NULL,'ALGODON'),(NULL,'BAMBOO'),(NULL,'CARTON'),(NULL,'CATALOGO'),(NULL,'CORAL FLEECE'),(NULL,'CREMA'),(NULL,'ENCAJE'),(NULL,'FRAGANCIA'),(NULL,'FRANELA'),(NULL,'JACQUARD'),(NULL,'LIQUIDACION'),(NULL,'MICROFIBRA'),(NULL,'MODAL'),(NULL,'PLASTICO'),(NULL,'PLUSH'),(NULL,'POLAR'),(NULL,'POLIAMIDA'),(NULL,'POLIESTER'),(NULL,'PUÑO'),(NULL,'PVC'),(NULL,'SATIN'),(NULL,'SIN COSTURA'),(NULL,'STOCK LOT'),(NULL,'TOALLA'),(NULL,'TREVIRA'),(NULL,'TULL'),(NULL,'VISCOSA');

INSERT INTO color VALUES (NULL,'ACERO','ACE'),(NULL,'ALMENDRA','ALM'),(NULL,'AMARILLO','AMA'),(NULL,'AMARILLO/ROJO','AMA'),(NULL,'ANIMAL PRINT','ANI'),(NULL,'ANIMAL PRINT/GRIS','ANI'),(NULL,'AQUA','AQU'),(NULL,'AZUL','AZU'),(NULL,'AZUL REY',''),(NULL,'AZUL/FLUOR',''),(NULL,'AZUL/GRIS',''),(NULL,'AZUL/PETROLEO',''),(NULL,'AZUL/ROSADO',''),(NULL,'AZUL/VERDE',''),(NULL,'AZULINO',''),(NULL,'BARQUILLO','BAR'),(NULL,'BEIGE','BEI'),(NULL,'BERENJENA',''),(NULL,'BERRY',''),(NULL,'BLANCO','BLA'),(NULL,'BLANCO/AZUL',''),(NULL,'BLANCO/FUCSIA/CALIPSO',''),(NULL,'BLANCO/GRIS',''),(NULL,'BLANCO/GRIS/NEGRO',''),(NULL,'BLANCO/NEGRO',''),(NULL,'BLANCO/NEGRO/ROSADO',''),(NULL,'BLUE','BLU'),(NULL,'BURDEO','BUR'),(NULL,'CAFÉ','CAF'),(NULL,'CALIPSO','CAL'),(NULL,'CALIPSO/FUCSIA',''),(NULL,'CALIPSO/MORADO',''),(NULL,'CALIPSO/ROJO',''),(NULL,'CALIPSO/TURQUESA',''),(NULL,'CALIPSO/VERDE/PETROLEO',''),(NULL,'CARBON',''),(NULL,'CARMIN',''),(NULL,'CELESTE','CEL'),(NULL,'CEREZA','CER'),(NULL,'CHOCOLATE','CHO'),(NULL,'COGÑAC','COG'),(NULL,'COLOR 1',''),(NULL,'COLOR 2',''),(NULL,'COLOR 3',''),(NULL,'COLOR 4',''),(NULL,'COM1','COM1'),(NULL,'COM2','COM2'),(NULL,'COM3','COM3'),(NULL,'COM4','COM4'),(NULL,'COM5','COM5'),(NULL,'CORAL','COR'),(NULL,'CREMA','CRE'),(NULL,'DAMASCO','DAM'),(NULL,'DEG','DEG'),(NULL,'DISEÑO','DIS'),(NULL,'ESMERALDA','ESM'),(NULL,'ESMERALDA/GRIS',''),(NULL,'ESTAMPADO','EST'),(NULL,'ETNICO','ETN'),(NULL,'ETNICO MORADO',''),(NULL,'ETNICO NEGRO',''),(NULL,'FLOR','FLO'),(NULL,'FLOR LILA',''),(NULL,'FLOR MORADA',''),(NULL,'FLOR MORADO',''),(NULL,'FLUOR','FLU'),(NULL,'FRESA','FRE'),(NULL,'FRUTILLA',''),(NULL,'FRUTILLA/AZUL',''),(NULL,'FUCSIA','FUC'),(NULL,'GRAFITO','GRA'),(NULL,'GREEN',''),(NULL,'GREY',''),(NULL,'GRIS','GRI'),(NULL,'GRIS/BLANCO',''),(NULL,'GRIS/CALIPSO',''),(NULL,'GUINDA','GUI'),(NULL,'JEANS','JEA'),(NULL,'LAVANDA','LAV'),(NULL,'LILA','LIL'),(NULL,'LIMA','LIM'),(NULL,'LISO','LIS'),(NULL,'LUCUMA','LUC'),(NULL,'LUNARES','LUN'),(NULL,'LUNARES ROJOS',''),(NULL,'MAGENTA','MAG'),(NULL,'MALVA','MAL'),(NULL,'MARENGO',''),(NULL,'MARFIL',''),(NULL,'MARRON',''),(NULL,'MELON','MEL'),(NULL,'MENTA','MEN'),(NULL,'MOCA','MOC'),(NULL,'MORA',''),(NULL,'MORADO','MOR'),(NULL,'MORADO/AZUL',''),(NULL,'MORADO/NEGRO',''),(NULL,'MORADO/VERDE',''),(NULL,'MOSTAZA','MOS'),(NULL,'NARANJA','NAR'),(NULL,'NARANJO',''),(NULL,'NATURAL','NAT'),(NULL,'NAVY','NAV'),(NULL,'NEGRO','NEG'),(NULL,'NEGRO/BLANCO',''),(NULL,'NEGRO/CALIPSO',''),(NULL,'NEGRO/CELESTE',''),(NULL,'NEGRO/FLUOR',''),(NULL,'NEGRO/GRAFITO',''),(NULL,'NEGRO/NARANJO',''),(NULL,'NEGRO/ROJO',''),(NULL,'NEGRO/ROSADO',''),(NULL,'NEGRO/VIOLETA',''),(NULL,'NUDE','NUD'),(NULL,'OBISPO','OBI'),(NULL,'ORANGE','ORA'),(NULL,'PACK1',''),(NULL,'PACK2',''),(NULL,'PACK3',''),(NULL,'PALO ROSA',''),(NULL,'PARTY','PAR'),(NULL,'PERA','PER'),(NULL,'PETROLEO','PET'),(NULL,'PETROLEO/GRIS',''),(NULL,'PIEL','PIE'),(NULL,'PINK','PIN'),(NULL,'PISTACHO','PIS'),(NULL,'PLOMO','PLO'),(NULL,'PRINT','PRI'),(NULL,'PRINT AZUL',''),(NULL,'PUNTOS MORA',''),(NULL,'PUNTOS MORADOS',''),(NULL,'PURPLE',''),(NULL,'PURPURA','PUR'),(NULL,'RAYON','RAY'),(NULL,'RED','RED'),(NULL,'RICH','RIC'),(NULL,'ROJO','ROJ'),(NULL,'ROJO/MORADO',''),(NULL,'ROJO/NEGRO',''),(NULL,'ROSA',''),(NULL,'ROSADO','ROS'),(NULL,'ROSADO/AZUL',''),(NULL,'ROYAL','ROY'),(NULL,'RUBI','RUB'),(NULL,'S/C',''),(NULL,'SAFIRO','SAF'),(NULL,'SANDIA','SAN'),(NULL,'SUN','SUN'),(NULL,'SURTIDO','SUR'),(NULL,'TAUPE','TAU'),(NULL,'TERRACOTA','TER'),(NULL,'TOSTADO','TOS'),(NULL,'TURQUESA','TUR'),(NULL,'UVA','UVA'),(NULL,'VERDE','VER'),(NULL,'VIOLETA','VIO'),(NULL,'VIOLETA/NAVY',''),(NULL,'VISON','VIS'),(NULL,'WARMRED','WAR'),(NULL,'WHITE','WHI'),(NULL,'ZEBRA','ZEB');
-- INSERT INTO Color VALUES (NULL,'ACERO'),(NULL,'ALMENDRA'),(NULL,'AMARILLO'),(NULL,'AMARILLO/ROJO'),(NULL,'ANIMAL PRINT'),(NULL,'ANIMAL PRINT/GRIS'),(NULL,'AQUA'),(NULL,'AZUL'),(NULL,'AZUL REY'),(NULL,'AZUL/FLUOR'),(NULL,'AZUL/GRIS'),(NULL,'AZUL/PETROLEO'),(NULL,'AZUL/ROSADO'),(NULL,'AZUL/VERDE'),(NULL,'AZULINO'),(NULL,'BARQUILLO'),(NULL,'BEIGE'),(NULL,'BERENJENA'),(NULL,'BERRY'),(NULL,'BLANCO'),(NULL,'BLANCO/AZUL'),(NULL,'BLANCO/FUCSIA/CALIPSO'),(NULL,'BLANCO/GRIS'),(NULL,'BLANCO/GRIS/NEGRO'),(NULL,'BLANCO/NEGRO'),(NULL,'BLANCO/NEGRO/ROSADO'),(NULL,'BLUE'),(NULL,'BURDEO'),(NULL,'CAFÉ'),(NULL,'CALIPSO'),(NULL,'CALIPSO/FUCSIA'),(NULL,'CALIPSO/MORADO'),(NULL,'CALIPSO/ROJO'),(NULL,'CALIPSO/TURQUESA'),(NULL,'CALIPSO/VERDE/PETROLEO'),(NULL,'CARBON'),(NULL,'CARMIN'),(NULL,'CELESTE'),(NULL,'CEREZA'),(NULL,'CHOCOLATE'),(NULL,'COGÑAC'),(NULL,'COLOR 1'),(NULL,'COLOR 2'),(NULL,'COLOR 3'),(NULL,'COLOR 4'),(NULL,'COM1'),(NULL,'COM2'),(NULL,'COM3'),(NULL,'COM4'),(NULL,'COM5'),(NULL,'CORAL'),(NULL,'CREMA'),(NULL,'DAMASCO'),(NULL,'DEG'),(NULL,'DISEÑO'),(NULL,'ESMERALDA'),(NULL,'ESMERALDA/GRIS'),(NULL,'ESTAMPADO'),(NULL,'ETNICO'),(NULL,'ETNICO MORADO'),(NULL,'ETNICO NEGRO'),(NULL,'FLOR'),(NULL,'FLOR LILA'),(NULL,'FLOR MORADA'),(NULL,'FLOR MORADO'),(NULL,'FLUOR'),(NULL,'FRESA'),(NULL,'FRUTILLA'),(NULL,'FRUTILLA/AZUL'),(NULL,'FUCSIA'),(NULL,'GRAFITO'),(NULL,'GREEN'),(NULL,'GREY'),(NULL,'GRIS'),(NULL,'GRIS/BLANCO'),(NULL,'GRIS/CALIPSO'),(NULL,'GUINDA'),(NULL,'JEANS'),(NULL,'LAVANDA'),(NULL,'LILA'),(NULL,'LIMA'),(NULL,'LISO'),(NULL,'LUCUMA'),(NULL,'LUNARES'),(NULL,'LUNARES ROJOS'),(NULL,'MAGENTA'),(NULL,'MALVA'),(NULL,'MARENGO'),(NULL,'MARFIL'),(NULL,'MARRON'),(NULL,'MELON'),(NULL,'MENTA'),(NULL,'MOCA'),(NULL,'MORA'),(NULL,'MORADO'),(NULL,'MORADO/AZUL'),(NULL,'MORADO/NEGRO'),(NULL,'MORADO/VERDE'),(NULL,'MOSTAZA'),(NULL,'NARANJA'),(NULL,'NARANJO'),(NULL,'NATURAL'),(NULL,'NAVY'),(NULL,'NEGRO'),(NULL,'NEGRO/BLANCO'),(NULL,'NEGRO/CALIPSO'),(NULL,'NEGRO/CELESTE'),(NULL,'NEGRO/FLUOR'),(NULL,'NEGRO/GRAFITO'),(NULL,'NEGRO/NARANJO'),(NULL,'NEGRO/ROJO'),(NULL,'NEGRO/ROSADO'),(NULL,'NEGRO/VIOLETA'),(NULL,'NUDE'),(NULL,'OBISPO'),(NULL,'ORANGE'),(NULL,'PACK1'),(NULL,'PACK2'),(NULL,'PACK3'),(NULL,'PALO ROSA'),(NULL,'PARTY'),(NULL,'PERA'),(NULL,'PETROLEO'),(NULL,'PETROLEO/GRIS'),(NULL,'PIEL'),(NULL,'PINK'),(NULL,'PISTACHO'),(NULL,'PLOMO'),(NULL,'PRINT'),(NULL,'PRINT AZUL'),(NULL,'PUNTOS MORA'),(NULL,'PUNTOS MORADOS'),(NULL,'PURPLE'),(NULL,'PURPURA'),(NULL,'RAYON'),(NULL,'RED'),(NULL,'RICH'),(NULL,'ROJO'),(NULL,'ROJO/MORADO'),(NULL,'ROJO/NEGRO'),(NULL,'ROSA'),(NULL,'ROSADO'),(NULL,'ROSADO/AZUL'),(NULL,'ROYAL'),(NULL,'RUBI'),(NULL,'S/C'),(NULL,'SAFIRO'),(NULL,'SANDIA'),(NULL,'SUN'),(NULL,'SURTIDO'),(NULL,'TAUPE'),(NULL,'TERRACOTA'),(NULL,'TOSTADO'),(NULL,'TURQUESA'),(NULL,'UVA'),(NULL,'VERDE'),(NULL,'VIOLETA'),(NULL,'VIOLETA/NAVY'),(NULL,'VISON'),(NULL,'WARMRED'),(NULL,'WHITE'),(NULL,'ZEBRA');
select * from color;
-- truncate table color;

INSERT INTO presentacion VALUES (NULL,'UNITARIO',''),(NULL,'BIPACK','P2'),(NULL,'TRIPACK','P3'),(NULL,'CATALOGO','CATA'),(NULL,'PROMOCION','PROM'),(NULL,'PACK 5','P5'),(NULL,'PACK','');
-- INSERT INTO Presentacion VALUES (NULL,'UNITARIO'),(NULL,'BIPACK'),(NULL,'TRIPACK'),(NULL,'CATALOGO'),(NULL,'PROMOCION'),(NULL,'PACK 5'),(NULL,'PACK');

-- INSERT INTO TempPrenda VALUES ('INVIERNO'),('VERANO'),('TODA TEMPORADA');
INSERT INTO TempPrenda VALUES (NULL,'INVIERNO'),(NULL,'VERANO'),(NULL,'TODA TEMPORADA');

-- INSERT INTO TempCatalogo VALUES ('DESCONTINUADO'),('EVD'),('EVD/COL'),('INV11'),('INV12'),('Inv13'),('INV14'),('INV15'),('INV16'),('INV17'),('INV18'),('LIMAS'),('OUTLET'),('STOCK LOT'),('VER12'),('Ver13'),('VER14'),('VER15'),('VER16'),('VER17'),('VER18');
INSERT INTO TempCatalogo VALUES (NULL,'DESCONTINUADO'),(NULL,'EVD'),(NULL,'EVD/COL'),(NULL,'INV11'),(NULL,'INV12'),(NULL,'Inv13'),(NULL,'INV14'),(NULL,'INV15'),(NULL,'INV16'),(NULL,'INV17'),(NULL,'INV18'),(NULL,'LIMAS'),(NULL,'OUTLET'),(NULL,'STOCK LOT'),(NULL,'VER12'),(NULL,'Ver13'),(NULL,'VER14'),(NULL,'VER15'),(NULL,'VER16'),(NULL,'VER17'),(NULL,'VER18');

-- INSERT INTO Copa VALUES ('S/C'),('A'),('C'),('B'),('D'),('DD');
INSERT INTO Copa VALUES (NULL,'S/C'),(NULL,'A'),(NULL,'C'),(NULL,'B'),(NULL,'D'),(NULL,'DD');

-- INSERT INTO FormaCopa VALUES ('SIN COPA'),('COPA S'),('BALCONET'),('BICASCO'),('COBERTURA COMPLETA'),('TRICASCO'),('MAXI COPA'),('STRAPLESS'),('SIN ARCO');
INSERT INTO FormaCopa VALUES (NULL,'SIN COPA'),(NULL,'COPA S'),(NULL,'BALCONET'),(NULL,'BICASCO'),(NULL,'COBERTURA COMPLETA'),(NULL,'TRICASCO'),(NULL,'MAXI COPA'),(NULL,'STRAPLESS'),(NULL,'SIN ARCO');

-- INSERT INTO GrupoUso VALUES ('NIÑOS'),('SEÑORA'),('MUJER'),('JUVENIL'),('ADULTO'),('HOGAR'),('PROMOTORA'),('INSUMOS'),('ESCOLAR'),('OUTLET'),('INFANTIL'),('EXHIBIDOR');
INSERT INTO GrupoUso VALUES (NULL,'NIÑOS'),(NULL,'SEÑORA'),(NULL,'MUJER'),(NULL,'JUVENIL'),(NULL,'ADULTO'),(NULL,'HOGAR'),(NULL,'PROMOTORA'),(NULL,'INSUMOS'),(NULL,'ESCOLAR'),(NULL,'OUTLET'),(NULL,'INFANTIL'),(NULL,'EXHIBIDOR');


INSERT INTO Dpto_Prenda VALUES (103,'22'),(105,'31'),(106,'01'),(106,'02'),(106,'03'),(106,'06'),(106,'08'),(106,'09'),(106,'12'),(106,'13'),(106,'14'),(106,'16'),(106,'17'),(106,'18'),(106,'21'),(106,'22'),(106,'25'),(106,'34'),(106,'35'),(106,'36'),(106,'37'),(106,'38'),(106,'40'),(106,'41'),(106,'42'),(106,'43'),(106,'46'),(106,'48'),(106,'50'),(108,'03'),(108,'07'),(108,'08'),(108,'10'),(108,'11'),(108,'12'),(108,'22'),(108,'26'),(127,'03'),(127,'08'),(127,'09'),(127,'12'),(127,'22'),(127,'25'),(127,'42'),(128,'03'),(128,'07'),(128,'08'),(128,'10'),(128,'12'),(128,'22'),(129,'08'),(129,'09'),(129,'12'),(129,'22'),(129,'42'),(130,'07'),(130,'08'),(130,'10'),(130,'12'),(130,'22');
INSERT INTO Dpto_Subdpto VALUES (103,8),(105,4),(106,1),(106,2),(106,8),(106,9),(106,5),(106,16),(106,3),(106,14),(106,10),(106,11),(106,15),(106,6),(106,18),(106,13),(108,8),(108,17),(108,3),(108,13),(127,8),(127,3),(127,5),(128,8),(128,17),(128,3),(129,3),(129,5),(129,8),(130,17),(130,3),(130,8),(145,3),(147,12);
INSERT INTO Subdpto_Prenda VALUES (1,'01'),(1,'35'),(1,'36'),(1,'37'),(1,'38'),(1,'46'),(1,'18'),(1,'28'),(1,'25'),(2,'02'),(3,'08'),(3,'39'),(4,'31'),(5,'09'),(5,'06'),(5,'14'),(5,'25'),(6,'17'),(7,'47'),(8,'22'),(8,'03'),(8,'42'),(8,'41'),(9,'06'),(9,'43'),(9,'13'),(9,'25'),(10,'09'),(11,'09'),(11,'25'),(12,'49'),(13,'26'),(14,'34'),(14,'21'),(15,'45'),(15,'16'),(15,'15'),(15,'48'),(16,'40'),(16,'34'),(16,'50'),(17,'07'),(17,'11'),(17,'10'),(18,'33');
INSERT INTO Prenda_Categoria VALUES ('22','01'),('31','21'),('31','09'),('03','06'),('07','05'),('07','06'),('08','06'),('08','05'),('08','07'),('11','06'),('12','51'),('12','52'),('12','68'),('22','04'),('10','55'),('10','56'),('10','79'),('26','78'),('47','25'),('47','53'),('47','50'),('47','13'),('47','09'),('47','17'),('47','58'),('47','59'),('47','10'),('47','11'),('47','12'),('47','16'),('39','06'),('09','08'),('09','62'),('42','51'),('22','41'),('22','20'),('25','63'),('25','65'),('25','02'),('01','74'),('35','74'),('02','29'),('02','26'),('02','67'),('03','05'),('06','31'),('06','70'),('36','47'),('37','76'),('37','39'),('38','43'),('40','15'),('34','46'),('34','18'),('09','55'),('09','45'),('09','03'),('09','19'),('09','24'),('09','37'),('09','54'),('41','52'),('41','51'),('42','52'),('42','26'),('43','27'),('14','34'),('45','35'),('46','36'),('17','22'),('17','40'),('16','42'),('13','30'),('13','28'),('15','44'),('48','48'),('21','49'),('21','39'),('50','64'),('18','66'),('25','33'),('25','07'),('25','38'),('25','72'),('25','69'),('25','03'),('25','73'),('25','57'),('25','54'),('25','14'),('25','60'),('33','75'),('33','19'),('33','32'),('33','71'),('28','77'),('49','61');
-- INSERT INTO Dpto_Prenda_Subdpto VALUES (106,'34',14,'101'),(106,'09',11,'118'),(106,'12',9,'141'),(106,'25',9,'150');
-- INSERT INTO Dpto_Prenda_Categoria VALUES (106,'09','55','10'),(106,'12','52','40'),(106,'22','04','70'),(106,'41','52','61'),(106,'42','52','61'),(127,'09','08','16'),(127,'22','01','65'),(128,'22','01','66'),(129,'22','01','63'),(130,'22','04','74'),(106,'09','45','11'),(106,'09','24','12'),(106,'09','08','13'),(106,'09','62','14'),(106,'12','68','41'),(106,'22','01','60'),(106,'41','51','71'),(106,'42','51','71'),(127,'09','62','15'),(127,'22','04','75'),(127,'25','63','25'),(128,'22','04','76'),(129,'22','04','73'),(130,'22','01','64');

INSERT INTO Talla VALUES ('T01'),('T02'),('T03'),('T04'),('T05'),('T06'),('T07'),('T17'),('T24'),('T30'),('T32'),('T33'),('T34');
INSERT INTO DetalleTalla VALUES ('T01','00',1),('T01','01',2),('T01','02',3),('T01','03',4),('T01','04',5),('T01','05',6),('T02','0/3',1),('T02','10/12',6),('T02','12/18',7),('T02','14/16',8),('T02','18/24',9),('T02','2/4',10),('T02','3/6',2),('T02','6/8',3),('T02','6/9',4),('T02','9/12',5),('T03','L',3),('T03','M',2),('T03','S',1),('T03','XL',4),('T03','XS',7),('T03','XXL',5),('T03','XXXL',6),('T04','2',1),('T04','3',2),('T04','5',10),('T05','32',1),('T05','34',2),('T05','36',3),('T05','38',4),('T05','40',5),('T05','42',6),('T05','44',7),('T06','52',1),('T06','54',2),('T06','56',3),('T06','L',4),('T06','M',5),('T06','S',6),('T06','XL',7),('T06','XXL',8),('T07','UNI',1),('T17','27/28',1),('T17','29/30',2),('T17','31/32',3),('T17','33/34',4),('T17','35/36',5),('T17','37/38',6),('T17','39/40',7),('T17','41/42',8),('T17','43/44',9),('T17','45/46',10),('T24','28A',1),('T24','30A',2),('T24','32A',3),('T24','34A',4),('T30','10',6),('T30','12',7),('T30','14',8),('T30','16',9),('T30','4',3),('T30','6',4),('T30','8',5),('T32','39/42',1),('T32','43/46',2),('T33','30/34',1),('T33','35/37',2),('T34','30/33',1),('T34','34/36',2),('T34','37/39',3),('T34','40/43',4);
INSERT INTO Prenda_Talla VALUES ('01','T07'),('02','T07'),('02','T03'),('03','T03'),('03','T02'),('06','T03'),('07','T30'),('07','T03'),('07','T07'),('08','T04'),('08','T34'),('08','T07'),('08','T33'),('08','T17'),('08','T32'),('09','T06'),('09','T30'),('09','T07'),('09','T03'),('10','T30'),('10','T03'),('11','T03'),('11','T30'),('12','T07'),('12','T03'),('12','T30'),('13','T05'),('13','T03'),('14','T03'),('14','T05'),('15','T07'),('16','T07'),('17','T06'),('17','T03'),('18','T07'),('20','T07'),('21','T04'),('21','T07'),('21','T03'),('22','T30'),('22','T02'),('22','T07'),('22','T03'),('25','T03'),('25','T24'),('25','T07'),('25','T30'),('25','T05'),('26','T17'),('28','T07'),('31','T07'),('32','T17'),('32','T24'),('32','T07'),('32','T30'),('33','T03'),('34','T07'),('34','T03'),('35','T07'),('36','T07'),('37','T07'),('38','T07'),('39','T34'),('39','T33'),('40','T03'),('41','T06'),('41','T07'),('41','T03'),('42','T30'),('42','T03'),('42','T06'),('43','T03'),('45','T07'),('46','T07'),('47','T07'),('47','T03'),('47','T05'),('48','T07'),('49','T07'),('49','T03'),('50','T03');

INSERT INTO Prenda_Copa VALUES ('25',1),('25',2),('25',3),('25',4),('25',5),('25',6),('13',3);
INSERT INTO Prenda_FormaCopa VALUES ('25',1),('25',2),('25',3),('25',4),('25',5),('25',6),('25',7),('25',8),('25',9);
-- INSERT INTO Prenda_Copa VALUES ('25','S/C'),('25','A'),('25','C'),('25','B'),('25','D'),('25','DD'),('13','C');
-- INSERT INTO Prenda_FormaCopa VALUES ('25','SIN COPA'),('25','COPA S'),('25','BALCONET'),('25','BICASCO'),('25','COBERTURA COMPLETA'),('25','TRICASCO'),('25','MAXI COPA'),('25','STRAPLESS'),('25','SIN ARCO');
INSERT INTO composicion VALUES (NULL,'100% ACRILICO'),(NULL,'100% ALGODON'),(NULL,'100% NYLON'),(NULL,'100% POLIESTER'),(NULL,'100% POLYAMIDA'),(NULL,'100% SILICONA'),(NULL,'100% SPANDEX'),(NULL,'40% ALGODON 55% POLIESTER 5% ELASTANO'),(NULL,'40% POLYAMIDA 40% POLIESTER 20%ELASTANO'),(NULL,'48% ALGODON 47% POLIESTER 5% SPANDEX'),(NULL,'50% ALGODON 50% POLIESTER'),(NULL,'50% POLIESTER 50% POLYAMIDA'),(NULL,'60% ALGODON 40% ELASTANO'),(NULL,'60% ALGODON 40% POLIESTER'),(NULL,'60% ALGODON 40% POLYAMIDA'),(NULL,'60% POLIESTER 40% ALGODON'),(NULL,'63% POLIESTER 32% ALGODON 5% ELASTANO'),(NULL,'65% ALGODON 35% POLIESTER'),(NULL,'65% POLIESTER 35% ALGODON'),(NULL,'66% ALGODON 27% POLIESTER 7% ELASTANO'),(NULL,'70% ACRILICO 25% POLIETER 5%ELASTANO'),(NULL,'70% ALGODON 20% POLIESTER 10% ESLASTANO'),(NULL,'70% POLIESTER 20% NYLON 10% ELASTANO'),(NULL,'70% POLYAMIDA 20% POLIESTER 10% ELASTANO'),(NULL,'75% ALGODON 22% POLIESTER 3% ELASTANO'),(NULL,'75% ALGODON 22% POLIESTER 3% SPANDEX'),(NULL,'75% ALGODON 22% POLYAMIDA 3% ELASTANO'),(NULL,'75% ALGODON 23% POLYAMIDA 2% ELASTANO'),(NULL,'75% ALGODON 24% POLIESTER 1% ELASTANO'),(NULL,'75% ALGODON 25% POLIESTER'),(NULL,'75% BAMBOO 25 %POLYAMIDA'),(NULL,'75% BAMBOO 25% POLIESTER'),(NULL,'75% POLYAMIDA 25% ELASTANO'),(NULL,'78% NYLON 15% ELASTANO 7% ALGODON'),(NULL,'78% POLIAMIDA 12% POLIESTER 10% ELASTANO'),(NULL,'78% POLYAMIDA 12% POLIE STER 10% ELASTANO'),(NULL,'80% ALGODON 10% POLYAMIDA 10% ELASTANO'),(NULL,'80% ALGODON 15% POLIESTER 5% ELASTANO'),(NULL,'80% ALGODON 15% POLYAMIDA 5% ELASTANO'),(NULL,'80% ALGODON 18% POLIESTER 2% ELASTANO'),(NULL,'80% ALGODON 20% POLIESTER'),(NULL,'80% NYLON 20% ELASTANO'),(NULL,'80% NYLON 20% SPANDEX'),(NULL,'80% POLIESTER 10% ALGODON 10% ELASTANO'),(NULL,'80% POLYAMIDA 10% ALGODON 10% ELASTANO'),(NULL,'80% POLYAMIDA 10% POLIESTR 10% ELASTANO'),(NULL,'80% POLYAMIDA 20% ELASTANO'),(NULL,'80% POLIESTER 20% ELASTANO'),(NULL,'82% POLYAMIDA 18% ELASTANO'),(NULL,'82% POLIESTER 18% ELASTANO'),(NULL,'83% POLIESTER 17% ALGODON'),(NULL,'83% POLYAMIDA 17% ELASTANO'),(NULL,'85% NYLON 15% SPANDEX'),(NULL,'85% POLIESTER 10% ELASTANO 5% ALGODON'),(NULL,'85% POLYAMIDA 10% ELASTANO 5% ALGODON'),(NULL,'85% POLIESTER 15% ELASTANO'),(NULL,'85% POLYAMIDA 15% ELASTANO'),(NULL,'86% NYLON 14% ELASTANO'),(NULL,'86% NYLON 14% SPANDEX'),(NULL,'86% POLYAMIDA 14% ELASTANO'),(NULL,'87% POLYAMIDA 13% ELASTANO'),(NULL,'88% POLIESTER 12% ELASTANO'),(NULL,'88% POLYAMIDA 12% ELASTANO'),(NULL,'90% ALGODON 10% ELASTANO'),(NULL,'90% POLIESTER 10% ELASTANO'),(NULL,'90% POLYAMIDA 10% ELASTANO'),(NULL,'92% ALGODON 8% ELASTANO'),(NULL,'92% ALGODON 8% SPANDEX'),(NULL,'92% NYLON 8% SPANDEX'),(NULL,'92% POLIESTER 8% ELASTANO'),(NULL,'92% POLIESTER 8% SPANDEX'),(NULL,'92% POLYAMIDA 8% ELASTANO'),(NULL,'93% ALGODON 7% ELASTANO'),(NULL,'93% POLIESTER 7% ELASTANO'),(NULL,'93% POLYAMIDA 7% ELASTANO'),(NULL,'94% POLIESTER 6% ELASTANO'),(NULL,'94% POLYAMIDA 6% ELASTANO'),(NULL,'95% ALGODON 5% ELASTANO'),(NULL,'95% ALGODON 5% POLYAMIDA'),(NULL,'95% BAMBOO 5% ELASTANO'),(NULL,'95% COTTON 5% ELASTANO'),(NULL,'95% POLIESTER 5% ELASTANO'),(NULL,'95% POLYAMIDA 5% ELASTANO'),(NULL,'95% POLYAMIDA 5% SPANDEX'),(NULL,'97% POLIESTER 3% ELASTANO'),(NULL,'98% ALGODON 5% ELASTANO'),(NULL,'98% POLIESTER 2% ELASTANO');
select * from composicion;
truncate table composicion;

DESCRIBE caracteristica;
INSERT INTO caracteristica VALUES (NULL,'FULL PRINT'),(NULL,'OTRA CARACTERISTICA');


INSERT INTO relacionprefijo VALUES (NULL,103,NULL,'22','','0'),(NULL,105,NULL,'31','','CATA'),(NULL,106,NULL,'01','','AC'),(NULL,106,NULL,'02','','73'),(NULL,106,NULL,'03','','78'),(NULL,106,NULL,'06','','150'),(NULL,106,NULL,'08','','99M'),(NULL,106,NULL,'09','55','10'),(NULL,106,NULL,'09','45','11'),(NULL,106,NULL,'09','24','12'),(NULL,106,NULL,'09','8','13'),(NULL,106,NULL,'09','62','14'),(NULL,106,11,'09','','118'),(NULL,106,NULL,'12','52','40'),(NULL,106,NULL,'12','68','41'),(NULL,106,9,'12','','141'),(NULL,106,NULL,'13','','180'),(NULL,106,NULL,'14','','32'),(NULL,106,NULL,'16','','AC'),(NULL,106,NULL,'17','','19'),(NULL,106,NULL,'18','','AC'),(NULL,106,NULL,'21','','101'),(NULL,106,NULL,'22','04','70'),(NULL,106,NULL,'22','01','60'),(NULL,106,NULL,'25','','50'),(NULL,106,9,'25','','150'),(NULL,106,14,'34','','101'),(NULL,106,NULL,'35','','AC'),(NULL,106,NULL,'36','','AC'),(NULL,106,NULL,'37','','AC'),(NULL,106,NULL,'38','','AC'),(NULL,106,NULL,'40','','56'),(NULL,106,NULL,'41','52','61'),(NULL,106,NULL,'41','51','71'),(NULL,106,NULL,'42','52','61'),(NULL,106,NULL,'42','51','71'),(NULL,106,NULL,'43','','160'),(NULL,106,NULL,'46','','AC'),(NULL,106,NULL,'48','','AC'),(NULL,106,NULL,'50','','52'),(NULL,108,NULL,'03','','79'),(NULL,108,NULL,'07','','93'),(NULL,108,NULL,'08','','99H'),(NULL,108,NULL,'10','','91'),(NULL,108,NULL,'11','','98'),(NULL,108,NULL,'12','','40'),(NULL,108,NULL,'22','','67'),(NULL,108,NULL,'26','','ZH'),(NULL,127,NULL,'03','','69'),(NULL,127,NULL,'08','','99NP'),(NULL,127,NULL,'09','08','16'),(NULL,127,NULL,'09','62','15'),(NULL,127,NULL,'12','','45'),(NULL,127,NULL,'22','01','65'),(NULL,127,NULL,'22','04','75'),(NULL,127,NULL,'25','','51'),(NULL,127,NULL,'25','63','25'),(NULL,127,NULL,'42','','75'),(NULL,128,NULL,'03','','69'),(NULL,128,NULL,'07','','97'),(NULL,128,NULL,'08','','99NP'),(NULL,128,NULL,'10','','95'),(NULL,128,NULL,'12','','45'),(NULL,128,NULL,'22','01','66'),(NULL,128,NULL,'22','04','76'),(NULL,129,NULL,'08','','99NP'),(NULL,129,NULL,'09','','17'),(NULL,129,NULL,'12','','47'),(NULL,129,NULL,'22','04','73'),(NULL,129,NULL,'22','01','63'),(NULL,129,NULL,'42','','73'),(NULL,130,NULL,'07','','97'),(NULL,130,NULL,'08','','99NP'),(NULL,130,NULL,'10','','97'),(NULL,130,NULL,'12','','47'),(NULL,130,NULL,'22','04','74'),(NULL,130,NULL,'22','01','64');
-- INSERT INTO relacionprefijo VALUES (NULL,103,NULL,'22','','0'),(NULL,105,NULL,'31','','CATA'),(NULL,106,NULL,'1','','AC'),(NULL,106,NULL,'2','','73'),(NULL,106,NULL,'3','','78'),(NULL,106,NULL,'6','','150'),(NULL,106,NULL,'8','','99M'),(NULL,106,NULL,'9','55','10'),(NULL,106,NULL,'9','45','11'),(NULL,106,NULL,'9','24','12'),(NULL,106,NULL,'9','8','13'),(NULL,106,NULL,'9','62','14'),(NULL,106,11,'9','','118'),(NULL,106,NULL,'12','52','40'),(NULL,106,NULL,'12','68','41'),(NULL,106,9,'12','','141'),(NULL,106,NULL,'13','','180'),(NULL,106,NULL,'14','','32'),(NULL,106,NULL,'16','','AC'),(NULL,106,NULL,'17','','19'),(NULL,106,NULL,'18','','AC'),(NULL,106,NULL,'21','','101'),(NULL,106,NULL,'22','4','70'),(NULL,106,NULL,'22','1','60'),(NULL,106,NULL,'25','','50'),(NULL,106,9,'25','','150'),(NULL,106,14,'34','','101'),(NULL,106,NULL,'35','','AC'),(NULL,106,NULL,'36','','AC'),(NULL,106,NULL,'37','','AC'),(NULL,106,NULL,'38','','AC'),(NULL,106,NULL,'40','','56'),(NULL,106,NULL,'41','52','61'),(NULL,106,NULL,'41','51','71'),(NULL,106,NULL,'42','52','61'),(NULL,106,NULL,'42','51','71'),(NULL,106,NULL,'43','','160'),(NULL,106,NULL,'46','','AC'),(NULL,106,NULL,'48','','AC'),(NULL,106,NULL,'50','','52'),(NULL,108,NULL,'3','','79'),(NULL,108,NULL,'7','','93'),(NULL,108,NULL,'8','','99H'),(NULL,108,NULL,'10','','91'),(NULL,108,NULL,'11','','98'),(NULL,108,NULL,'12','','40'),(NULL,108,NULL,'22','','67'),(NULL,108,NULL,'26','','ZH'),(NULL,127,NULL,'3','','69'),(NULL,127,NULL,'8','','99NP'),(NULL,127,NULL,'9','8','16'),(NULL,127,NULL,'9','62','15'),(NULL,127,NULL,'12','','45'),(NULL,127,NULL,'22','1','65'),(NULL,127,NULL,'22','4','75'),(NULL,127,NULL,'25','','51'),(NULL,127,NULL,'25','63','25'),(NULL,127,NULL,'42','','75'),(NULL,128,NULL,'3','','69'),(NULL,128,NULL,'7','','97'),(NULL,128,NULL,'8','','99NP'),(NULL,128,NULL,'10','','95'),(NULL,128,NULL,'12','','45'),(NULL,128,NULL,'22','1','66'),(NULL,128,NULL,'22','4','76'),(NULL,129,NULL,'8','','99NP'),(NULL,129,NULL,'9','','17'),(NULL,129,NULL,'12','','47'),(NULL,129,NULL,'22','4','73'),(NULL,129,NULL,'22','1','63'),(NULL,129,NULL,'42','','73'),(NULL,130,NULL,'7','','97'),(NULL,130,NULL,'8','','99NP'),(NULL,130,NULL,'10','','97'),(NULL,130,NULL,'12','','47'),(NULL,130,NULL,'22','4','74'),(NULL,130,NULL,'22','1','64');
-- INSERT INTO RelacionPrefijo VALUES (NULL,103,NULL,'22','',NULL,'00'),(NULL,105,NULL,'31','',NULL,'CATA'),(NULL,106,NULL,'01','',NULL,'AC'),(NULL,106,NULL,'02','',NULL,'73'),(NULL,106,NULL,'03','',NULL,'78'),(NULL,106,NULL,'06','',NULL,'150'),(NULL,106,NULL,'08','',NULL,'99M'),(NULL,106,NULL,'09','55',NULL,'10'),(NULL,106,NULL,'09','45',NULL,'11'),(NULL,106,NULL,'09','24',NULL,'12'),(NULL,106,NULL,'09','08',NULL,'13'),(NULL,106,NULL,'09','62',NULL,'14'),(NULL,106,11,'09','',NULL,'118'),(NULL,106,NULL,'12','52',NULL,'40'),(NULL,106,NULL,'12','68',NULL,'41'),(NULL,106,9,'12','',NULL,'141'),(NULL,106,NULL,'13','',NULL,'180'),(NULL,106,NULL,'14','',NULL,'32'),(NULL,106,NULL,'16','',NULL,'AC'),(NULL,106,NULL,'17','',NULL,'19'),(NULL,106,NULL,'18','',NULL,'AC'),(NULL,106,NULL,'21','',NULL,'101'),(NULL,106,NULL,'22','04',NULL,'70'),(NULL,106,NULL,'22','01',NULL,'60'),(NULL,106,NULL,'25','',NULL,'50'),(NULL,106,9,'25','',NULL,'150'),(NULL,106,14,'34','',NULL,'101'),(NULL,106,NULL,'35','',NULL,'AC'),(NULL,106,NULL,'36','',NULL,'AC'),(NULL,106,NULL,'37','',NULL,'AC'),(NULL,106,NULL,'38','',NULL,'AC'),(NULL,106,NULL,'40','',NULL,'56'),(NULL,106,NULL,'41','52',NULL,'61'),(NULL,106,NULL,'41','51',NULL,'71'),(NULL,106,NULL,'42','52',NULL,'61'),(NULL,106,NULL,'42','51',NULL,'71'),(NULL,106,NULL,'43','',NULL,'160'),(NULL,106,NULL,'46','',NULL,'AC'),(NULL,106,NULL,'48','',NULL,'AC'),(NULL,106,NULL,'50','',NULL,'52'),(NULL,108,NULL,'03','',NULL,'79'),(NULL,108,NULL,'07','',NULL,'93'),(NULL,108,NULL,'08','',NULL,'99H'),(NULL,108,NULL,'10','',NULL,'91'),(NULL,108,NULL,'11','',NULL,'98'),(NULL,108,NULL,'12','',NULL,'40'),(NULL,108,NULL,'22','',NULL,'67'),(NULL,108,NULL,'26','',NULL,'ZH'),(NULL,127,NULL,'03','',NULL,'69'),(NULL,127,NULL,'08','',NULL,'99NP'),(NULL,127,NULL,'09','08',NULL,'16'),(NULL,127,NULL,'09','62',NULL,'15'),(NULL,127,NULL,'12','',NULL,'45'),(NULL,127,NULL,'22','01',NULL,'65'),(NULL,127,NULL,'22','04',NULL,'75'),(NULL,127,NULL,'25','',NULL,'51'),(NULL,127,NULL,'25','63',NULL,'25'),(NULL,127,NULL,'42','',NULL,'75'),(NULL,128,NULL,'03','',NULL,'69'),(NULL,128,NULL,'07','',NULL,'97'),(NULL,128,NULL,'08','',NULL,'99NP'),(NULL,128,NULL,'10','',NULL,'95'),(NULL,128,NULL,'12','',NULL,'45'),(NULL,128,NULL,'22','01',NULL,'66'),(NULL,128,NULL,'22','04',NULL,'76'),(NULL,129,NULL,'08','',NULL,'99NP'),(NULL,129,NULL,'09','',NULL,'17'),(NULL,129,NULL,'12','',NULL,'47'),(NULL,129,NULL,'22','04',NULL,'73'),(NULL,129,NULL,'22','01',NULL,'63'),(NULL,129,NULL,'42','',NULL,'73'),(NULL,130,NULL,'07','',NULL,'97'),(NULL,130,NULL,'08','',NULL,'99NP'),(NULL,130,NULL,'10','',NULL,'97'),(NULL,130,NULL,'12','',NULL,'47'),(NULL,130,NULL,'22','04',NULL,'74'),(NULL,130,NULL,'22','01',NULL,'64');
truncate table relacionprefijo;
describe relacionprefijo;

-- INSERT INTO Talla VALUES ('T01','00','1'),('T01','01','2'),('T01','02','3'),('T01','03','4'),('T01','04','5'),('T01','05','6'),('T02','0/3','1'),('T02','3/6','2'),('T02','6/8','3'),('T02','6/9','4'),('T02','9/12','5'),('T02','10/12','6'),('T02','12/18','7'),('T02','14/16','8'),('T02','18/24','9'),('T02','2/4','10'),('T03','S','1'),('T03','M','2'),('T03','L','3'),('T03','XL','4'),('T03','XXL','5'),('T03','XXXL','6'),('T03','XS','7'),('T04','2','1'),('T04','3','2'),('T30','4','3'),('T30','6','4'),('T30','8','5'),('T30','10','6'),('T30','12','7'),('T30','14','8'),('T30','16','9'),('T04','5','10'),('T05','32','1'),('T05','34','2'),('T05','36','3'),('T05','38','4'),('T05','40','5'),('T05','42','6'),('T05','44','7'),('T07','UNI','1'),('T24','28A','1'),('T24','30A','2'),('T24','32A','3'),('T24','34A','4'),('T17','27/28','1'),('T17','29/30','2'),('T17','31/32','3'),('T17','33/34','4'),('T17','35/36','5'),('T17','37/38','6'),('T17','39/40','7'),('T17','41/42','8'),('T17','43/44','9'),('T17','45/46','10'),('T06','52','1'),('T06','54','2'),('T06','56','3'),('T06','S','4'),('T06','M','5'),('T06','L','6'),('T06','XL','7'),('T06','XXL','8'),('T32','39/42','1'),('T32','43/46','2'),('T33','30/34','1'),('T33','35/37','2'),('T34','30/33','1'),('T34','34/36','2'),('T34','37/39','3'),('T34','40/43','4');
select * from Composicion;
select * from RelacionPrefijo;
-- INSERT INTO RelacionPrefijo VALUES (NULL,103,NULL,'22','',NULL,'00'),(NULL,105,NULL,'31','',NULL,'CATA'),(NULL,108,NULL,'03','',NULL,'79'),(NULL,108,NULL,'07','',NULL,'93'),(NULL,108,NULL,'08','',NULL,'99H'),(NULL,108,NULL,'11','',NULL,'98'),(NULL,108,NULL,'12','',NULL,'40'),(NULL,108,NULL,'22','',NULL,'67'),(NULL,108,NULL,'10','',NULL,'91'),(NULL,108,NULL,'26','',NULL,'ZH'),(NULL,127,NULL,'03','',NULL,'69'),(NULL,127,NULL,'08','',NULL,'99NP'),(NULL,127,NULL,'09','08',NULL,'16'),(NULL,127,NULL,'09','62',NULL,'15'),(NULL,127,NULL,'12','',NULL,'45'),(NULL,127,NULL,'42','',NULL,'75'),(NULL,127,NULL,'22','01',NULL,'65'),(NULL,127,NULL,'22','04',NULL,'75'),(NULL,127,NULL,'25','',NULL,'51'),(NULL,127,NULL,'25','63',NULL,'25'),(NULL,128,NULL,'03','',NULL,'69'),(NULL,128,NULL,'07','',NULL,'97'),(NULL,128,NULL,'08','',NULL,'99NP'),(NULL,128,NULL,'12','',NULL,'45'),(NULL,128,NULL,'22','01',NULL,'66'),(NULL,128,NULL,'22','04',NULL,'76'),(NULL,128,NULL,'10','',NULL,'95'),(NULL,106,NULL,'01','',NULL,'AC'),(NULL,106,NULL,'35','',NULL,'AC'),(NULL,106,NULL,'02','',NULL,'73'),(NULL,106,NULL,'03','',NULL,'78'),(NULL,106,NULL,'06','',NULL,'150'),(NULL,106,NULL,'36','',NULL,'AC'),(NULL,106,NULL,'37','',NULL,'AC'),(NULL,106,NULL,'38','',NULL,'AC'),(NULL,106,NULL,'40','',NULL,'56'),(NULL,106,NULL,'08','',NULL,'99M'),(NULL,106,14,'34','',NULL,'101'),(NULL,106,NULL,'09','55',NULL,'10'),(NULL,106,NULL,'09','45',NULL,'11'),(NULL,106,NULL,'09','24',NULL,'12'),(NULL,106,NULL,'09','08',NULL,'13'),(NULL,106,NULL,'09','62',NULL,'14'),(NULL,106,11,'09','',NULL,'118'),(NULL,106,11,'09','55',NULL,'18'),(NULL,106,NULL,'41','52',NULL,'61'),(NULL,106,NULL,'41','51',NULL,'71'),(NULL,106,NULL,'42','52',NULL,'61'),(NULL,106,NULL,'42','51',NULL,'71'),(NULL,106,NULL,'12','52',NULL,'40'),(NULL,106,NULL,'12','68',NULL,'41'),(NULL,106,9,'12','',NULL,'141'),(NULL,106,NULL,'43','',NULL,'160'),(NULL,106,NULL,'14','',NULL,'32'),(NULL,106,NULL,'46','',NULL,'AC'),(NULL,106,NULL,'17','',NULL,'19'),(NULL,106,NULL,'16','',NULL,'AC'),(NULL,106,NULL,'13','',NULL,'180'),(NULL,106,NULL,'48','',NULL,'AC'),(NULL,106,NULL,'21','',NULL,'101'),(NULL,106,NULL,'22','04',NULL,'70'),(NULL,106,NULL,'22','01',NULL,'60'),(NULL,106,NULL,'50','',NULL,'52'),(NULL,106,NULL,'18','',NULL,'AC'),(NULL,106,NULL,'25','',NULL,'50'),(NULL,106,9,'25','',NULL,'150'),(NULL,129,NULL,'08','',NULL,'99NP'),(NULL,129,NULL,'09','',NULL,'17'),(NULL,129,NULL,'12','',NULL,'47'),(NULL,129,NULL,'42','',NULL,'73'),(NULL,129,NULL,'22','04',NULL,'73'),(NULL,129,NULL,'22','01',NULL,'63'),(NULL,130,NULL,'07','',NULL,'97'),(NULL,130,NULL,'10','',NULL,'97'),(NULL,130,NULL,'08','',NULL,'99NP'),(NULL,130,NULL,'12','',NULL,'47'),(NULL,130,NULL,'22','04',NULL,'74'),(NULL,130,NULL,'22','01',NULL,'64');

-- INSERT INTO Dpto_Prenda VALUES (103,'22'),(105,'31'),(108,'3'),(108,'7'),(108,'8'),(108,'11'),(108,'12'),(108,'22'),(108,'10'),(108,'26'),(127,'3'),(127,'8'),(127,'9'),(127,'12'),(127,'42'),(127,'22'),(127,'25'),(128,'3'),(128,'7'),(128,'8'),(128,'12'),(128,'22'),(128,'10'),(106,'1'),(106,'35'),(106,'2'),(106,'3'),(106,'6'),(106,'36'),(106,'37'),(106,'38'),(106,'40'),(106,'8'),(106,'34'),(106,'9'),(106,'41'),(106,'42'),(106,'12'),(106,'43'),(106,'14'),(106,'46'),(106,'17'),(106,'16'),(106,'13'),(106,'48'),(106,'21'),(106,'22'),(106,'50'),(106,'18'),(106,'25'),(129,'8'),(129,'9'),(129,'12'),(129,'42'),(129,'22'),(130,'7'),(130,'10'),(130,'8'),(130,'12'),(130,'22');
select * from usuario;
insert into usuario values ('editor','editor','editor'),('reviser','reviser','reviser'),('admin','admin','admin');



USE kayser_articulos;
select * from articulo;
select * from sku;
select * from lista;
select * from lista_has_usuario

describe presentacion;

select* from presentacion;


SELECT nombre as name FROM subdpto WHERE id=3;
SELECT abreviatura from presentacion where id=2


SET FOREIGN_KEY_CHECKS=0;
TRUNCATE TABLE lista;
truncate table lista_has_usuario;
truncate table articulo;
truncate table sku;
SET FOREIGN_KEY_CHECKS=1;


truncate table marca;
truncate table presentacion;
truncate table relacionprefijo;

SET FOREIGN_KEY_CHECKS=0;
drop table caracteristica;
SET FOREIGN_KEY_CHECKS=1;

delete from lista where id=5;
SELECT barcode from sku order by barcode DESC -- LIMIT 1
SELECT @@identity AS id
SELECT codigo FROM articulo WHERE lista_codigo=2

INSERT INTO articulo VALUES ('D501001',2,'D501000-SOSTEN PETO CATALOGOI', 4,'DISNEY',106,'dama',5,'CORSETERIA','25','SOSTEN','63','PETO',1,'UNITARIO',5,'CATALOGO',2,'VERANO',21,'VER18',5,'ADULTO','full print',1,'100% ACRILICO','T03',100,'')
INSERT INTO lista values (NULL,'');
INSERT INTO sku VALUES('10.100s2-ACE-XS','10.1002',-1683047872,1,'ACERO','XS','7','','','2017-11-16 11:43:09')

truncate table marca;
truncate table composicion;
select * from marca;
select * from composicion;

INSERT INTO articulo VALUES ('P2131000',6,'P2131000-BIKINI ALGODON', 1,'KAYSER',106,'dama',5,'CORSETERIA','09','CALZON','08','BIKINI',2,'BIPACK',2,'ALGODON',1,'INVIERNO',23,'INV18',5,'ADULTO','','',2,'100% ALGODON','T03')

