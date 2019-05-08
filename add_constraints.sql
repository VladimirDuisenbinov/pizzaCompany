use `gait_arslan`;
ALTER TABLE `gait_arslan`.`contains` 
ADD INDEX `fk_order_id_idx` (`OrderID` ASC),
ADD INDEX `fk_pizza_id_idx` (`PizzaID` ASC), ALGORITHM = COPY;
ALTER TABLE `gait_arslan`.`contains` 
ADD CONSTRAINT `fk_order_id`
  FOREIGN KEY (`OrderID`)
  REFERENCES `gait_arslan`.`order` (`OrderID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_pizza_id`
  FOREIGN KEY (`PizzaID`)
  REFERENCES `gait_arslan`.`pizza` (`PizzaID`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION, ALGORITHM = COPY;

  ALTER TABLE `gait_arslan`.`cashier` 
ADD CONSTRAINT `fk_id_cashier`
  FOREIGN KEY (`CashierID`)
  REFERENCES `gait_arslan`.`employee` (`EID`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;

  ALTER TABLE `gait_arslan`.`cook` 
ADD CONSTRAINT `fk_cook`
  FOREIGN KEY (`CookID`)
  REFERENCES `gait_arslan`.`employee` (`EID`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;
  
  ALTER TABLE `gait_arslan`.`cook's_cuisine` 
ADD CONSTRAINT `fk_cooks_cuisine`
  FOREIGN KEY (`CID`)
  REFERENCES `gait_arslan`.`cook` (`CookID`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;

  ALTER TABLE `gait_arslan`.`cooks` 
ADD INDEX `fk_cooks_pizza_idx` (`PID` ASC);
ALTER TABLE `gait_arslan`.`cooks` 
ADD CONSTRAINT `fk_cook_cooks`
  FOREIGN KEY (`CID`)
  REFERENCES `gait_arslan`.`cook` (`CookID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_cooks_pizza`
  FOREIGN KEY (`PID`)
  REFERENCES `gait_arslan`.`pizza` (`PizzaID`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;

  ALTER TABLE `gait_arslan`.`deliveryman` 
ADD CONSTRAINT `fk_deliveryman_id`
  FOREIGN KEY (`DeliverymanID`)
  REFERENCES `gait_arslan`.`employee` (`EID`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;

  ALTER TABLE `gait_arslan`.`order` 
ADD INDEX `fk_clientID_idx` (`ClientID` ASC),
ADD INDEX `fk_delmanID_idx` (`DeliverymanID` ASC),
ADD INDEX `fk_cashierid_idx` (`CashierID` ASC);
ALTER TABLE `gait_arslan`.`order` 
ADD CONSTRAINT `fk_clientID`
  FOREIGN KEY (`ClientID`)
  REFERENCES `gait_arslan`.`client` (`ClientID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_cashierid`
  FOREIGN KEY (`CashierID`)
  REFERENCES `gait_arslan`.`cashier` (`CashierID`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_delmanID`
  FOREIGN KEY (`DeliverymanID`)
  REFERENCES `gait_arslan`.`deliveryman` (`DeliverymanID`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;