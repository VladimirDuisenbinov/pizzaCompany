use gait_arslan;

INSERT INTO `employee` (`EID`,`Sex`,`BDate`,`Salary`,`Email`,`FName`,`LName`,`Address`,`SuperID`,`Phone`) VALUES (1,'M','1986-04-26',90000,'j.harvey@nur.kz','Jason','Harvey','2 Pearson Lane',NULL,'+77771367845');
INSERT INTO `employee` (`EID`,`Sex`,`BDate`,`Salary`,`Email`,`FName`,`LName`,`Address`,`SuperID`,`Phone`) VALUES (2,'M','1988-02-03',85000,'j.cook@gmail.com','James','Cook','28 Golf View Hill',1,'+77054865987');
INSERT INTO `employee` (`EID`,`Sex`,`BDate`,`Salary`,`Email`,`FName`,`LName`,`Address`,`SuperID`,`Phone`) VALUES (3,'F','1980-09-19',70000,'j.snowden@hotmail.com','Jane','Snowden','36 Bultman Hill',1,'+77083154287');
INSERT INTO `employee` (`EID`,`Sex`,`BDate`,`Salary`,`Email`,`FName`,`LName`,`Address`,`SuperID`,`Phone`) VALUES (4,'F','1979-01-03',75000,'mhollyard0@geocities.com','Martha','Hollyard','45 Flowers',1,'+77023692581');
INSERT INTO `employee` (`EID`,`Sex`,`BDate`,`Salary`,`Email`,`FName`,`LName`,`Address`,`SuperID`,`Phone`) VALUES (5,'M','1988-02-05',70000,'eroan0@deviantart.com','Erie	','Roan','78 Baker',1,'+77476874596');
INSERT INTO `employee` (`EID`,`Sex`,`BDate`,`Salary`,`Email`,`FName`,`LName`,`Address`,`SuperID`,`Phone`) VALUES (6,'F','1993-06-12',55000,'ctunnoch3@imgur.com','Cal','Tunnoch','112 Ancest beach',1,'+77070251359');
INSERT INTO `employee` (`EID`,`Sex`,`BDate`,`Salary`,`Email`,`FName`,`LName`,`Address`,`SuperID`,`Phone`) VALUES (7,'M','1991-01-15',60000,'babrahami6@google.fr','Bernarr','Abrahami','10 Kabanbay',2,'+77774593832');
INSERT INTO `employee` (`EID`,`Sex`,`BDate`,`Salary`,`Email`,`FName`,`LName`,`Address`,`SuperID`,`Phone`) VALUES (8,'M','1990-12-12',65000,'sbeavis7@domainmarket.com','Sylas','Beavis','365 Turan',2,'+77777367361');
INSERT INTO `employee` (`EID`,`Sex`,`BDate`,`Salary`,`Email`,`FName`,`LName`,`Address`,`SuperID`,`Phone`) VALUES (9,'M','1995-07-04',53000,'eloutheane9@yolasite.com','Eduard','Loutheane','228 Zhenis',2,'+77057072562');
INSERT INTO `employee` (`EID`,`Sex`,`BDate`,`Salary`,`Email`,`FName`,`LName`,`Address`,`SuperID`,`Phone`) VALUES (10,'F','1997-04-19',55000,'ssidarya@pbs.org','Sharai','Sidary','53 Kabanbay',2,'+77713064093');


INSERT INTO `cooks` (`CID`,`PID`) VALUES (3,1);
INSERT INTO `cooks` (`CID`,`PID`) VALUES (3,2);
INSERT INTO `cooks` (`CID`,`PID`) VALUES (3,3);
INSERT INTO `cooks` (`CID`,`PID`) VALUES (3,7);
INSERT INTO `cooks` (`CID`,`PID`) VALUES (3,8);
INSERT INTO `cooks` (`CID`,`PID`) VALUES (5,4);
INSERT INTO `cooks` (`CID`,`PID`) VALUES (5,5);
INSERT INTO `cooks` (`CID`,`PID`) VALUES (5,6);
INSERT INTO `cooks` (`CID`,`PID`) VALUES (5,9);
INSERT INTO `cooks` (`CID`,`PID`) VALUES (5,10);
INSERT INTO `cooks` (`CID`,`PID`) VALUES (8,11);
INSERT INTO `cooks` (`CID`,`PID`) VALUES (8,12);
INSERT INTO `cooks` (`CID`,`PID`) VALUES (8,13);
INSERT INTO `cooks` (`CID`,`PID`) VALUES (8,14);
INSERT INTO `cooks` (`CID`,`PID`) VALUES (8,15);

INSERT INTO `cook's_cuisine` (`CID`,`Cuisine`) VALUES (3,'Asian');
INSERT INTO `cook's_cuisine` (`CID`,`Cuisine`) VALUES (3,'Europe');
INSERT INTO `cook's_cuisine` (`CID`,`Cuisine`) VALUES (3,'Mexican');
INSERT INTO `cook's_cuisine` (`CID`,`Cuisine`) VALUES (5,'Asian');
INSERT INTO `cook's_cuisine` (`CID`,`Cuisine`) VALUES (8,'Mexican');

INSERT INTO `deliveryman` (`DeliverymanID`,`Transport`) VALUES (7,'Mercedes-Benz G67');
INSERT INTO `deliveryman` (`DeliverymanID`,`Transport`) VALUES (9,'Nissan 350Z');
INSERT INTO `deliveryman` (`DeliverymanID`,`Transport`) VALUES (10,'Ford Focus');

INSERT INTO `cashier` (`CashierID`) VALUES (4);
INSERT INTO `cashier` (`CashierID`) VALUES (6);

INSERT INTO `pizza` (`PizzaID`,`Dough`,`Size`,`PName`) VALUES (1,'Cheesy bites',28,'Hawaiian');
INSERT INTO `pizza` (`PizzaID`,`Dough`,`Size`,`PName`) VALUES (2,'Cheesy bites',34,'Caesar');
INSERT INTO `pizza` (`PizzaID`,`Dough`,`Size`,`PName`) VALUES (3,'Thin&Crispy',24,'Spicy Curry');
INSERT INTO `pizza` (`PizzaID`,`Dough`,`Size`,`PName`) VALUES (4,'Sandwich',28,'Mushroom');
INSERT INTO `pizza` (`PizzaID`,`Dough`,`Size`,`PName`) VALUES (5,'Pan',24,'Vegetarian');
INSERT INTO `pizza` (`PizzaID`,`Dough`,`Size`,`PName`) VALUES (6,'Hot-dog',34,'Pepperoni');
INSERT INTO `pizza` (`PizzaID`,`Dough`,`Size`,`PName`) VALUES (7,'Stuffed crust',24,'Margarita');
INSERT INTO `pizza` (`PizzaID`,`Dough`,`Size`,`PName`) VALUES (8,'Cheesy bites',24,'Chicken pizza');
INSERT INTO `pizza` (`PizzaID`,`Dough`,`Size`,`PName`) VALUES (9,'Stuffed crust',28,'BBQ pizza');
INSERT INTO `pizza` (`PizzaID`,`Dough`,`Size`,`PName`) VALUES (10,'Sandwich',34,'Super Supreme');
INSERT INTO `pizza` (`PizzaID`,`Dough`,`Size`,`PName`) VALUES (11,'Pan',28,'Americano');
INSERT INTO `pizza` (`PizzaID`,`Dough`,`Size`,`PName`) VALUES (12,'Stuffed crust',24,'Mexican');
INSERT INTO `pizza` (`PizzaID`,`Dough`,`Size`,`PName`) VALUES (13,'Thin&Crispy',34,'Tselinograd');
INSERT INTO `pizza` (`PizzaID`,`Dough`,`Size`,`PName`) VALUES (14,'Stuffed crust',24,'Meat');
INSERT INTO `pizza` (`PizzaID`,`Dough`,`Size`,`PName`) VALUES (15,'Sandwich',28,'Burger pizza');

INSERT INTO `cook` (`CookID`,`Rank`) VALUES (3,'Executive chief');
INSERT INTO `cook` (`CookID`,`Rank`) VALUES (5,'Prep chief');
INSERT INTO `cook` (`CookID`,`Rank`) VALUES (8,'Sous chief');