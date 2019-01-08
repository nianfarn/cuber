
INSERT INTO NODES(ID, ADDRESS, ADDRESS_RU)  VALUES (0, 'Initial Node', 'Начальная точка');
INSERT INTO NODES(ID, ADDRESS, ADDRESS_RU)  VALUES (1, 'Dolgobrodskaya street', 'улица Долгобродская');
INSERT INTO NODES(ID, ADDRESS, ADDRESS_RU)  VALUES (2, 'Prospect Nezavisimosti', 'проспект Независимости');
INSERT INTO NODES(ID, ADDRESS, ADDRESS_RU)  VALUES (3, 'Yankovskogo street', 'улица Янковского');
INSERT INTO NODES(ID, ADDRESS, ADDRESS_RU)  VALUES (4, 'Gazety Zvyazda avenue', 'проспект газеты Звезда');
INSERT INTO NODES(ID, ADDRESS, ADDRESS_RU)  VALUES (5, 'Korolya street', 'улица Короля');
INSERT INTO NODES(ID, ADDRESS, ADDRESS_RU)  VALUES (6, 'Karla Libknehta street', 'улица Карла Маркса');
INSERT INTO NODES(ID, ADDRESS, ADDRESS_RU)  VALUES (7, 'Surganova street', 'улица Сурганова');
INSERT INTO NODES(ID, ADDRESS, ADDRESS_RU)  VALUES (8, 'Vilnyusskoe shosse', 'Вильнусское шоссе');

INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (1,5.9,1,2);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (2,1.7,3,2);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (3,2.3,3,4);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (4,4.8,5,4);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (5,7.8,2,5);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (6,8.4,6,5);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (7,5.1,8,5);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (8,10.7,2,7);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (9,12.9,6,7);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (10,7.3,6,8);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (11,5.9,2,1);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (22,1.7,2,3);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (33,2.3,4,3);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (44,4.8,4,5);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (55,7.8,5,2);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (66,8.4,5,6);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (77,5.1,5,8);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (88,10.7,7,2);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (99,12.9,7,6);
INSERT INTO EDGES(ID, LENGTH, FROMNODE_ID, TONODE_ID) VALUES (100,7.3,8,6);

INSERT INTO AUTHORITY (ID, NAME) VALUES (1, 'ROLE_CLIENT');
INSERT INTO AUTHORITY (ID, NAME) VALUES (2, 'ROLE_COURIER');
INSERT INTO AUTHORITY (ID, NAME) VALUES (3, 'ROLE_ADMIN');

INSERT INTO USER_DETAILS(ID, AGE, AUTHORITY_ID, EMAIL, ENABLED, FIRST_NAME, LAST_NAME, LAST_PASSWORD_RESET_DATE, PASSWORD, USERNAME) VALUES (10, 25, 1, 'romank@mail.ru', TRUE, 'roman', 'kuraev', PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'), '$2a$12$p2by/Q8zsf5TErnHFwxJlOBcWsTuz00qqMJTfIJZTkf5t3K8r3fCm', 'romanK');
INSERT INTO USER_DETAILS(ID, AGE, AUTHORITY_ID, EMAIL, ENABLED, FIRST_NAME, LAST_NAME, LAST_PASSWORD_RESET_DATE, PASSWORD, USERNAME) VALUES (1, 22, 2, 'vovam@mail.ru', TRUE, 'vova', 'minenko', PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'), '$2a$12$6TmzCotI8NHqtURa00zyRe7gRZjk6Obz62JVotReHPmmHGmLtAqYW', 'vovaM');
INSERT INTO CLIENTS (ID, USER_DETAILS_ID) VALUES (87, 10);
INSERT INTO COURIERS (ID, READY, USER_DETAILS_ID, CURRENTNODE_ID) VALUES (134, true, 1, 5);
INSERT INTO DELIVERY_ORDERS (ID, PRICE, PRODUCT_NAME, VOLUME, WEIGHT, CLIENT_ID, COURIER_ID, FROM_NODE_LOCATION_ID, TO_NODE_LOCATION_ID, CURRENTNODE_ID, STATUS) VALUES (23, 22.34, 'Cookies', 1200, 3000, 87, 134, 2, 8, 5, 'IN_TRANSIT');

