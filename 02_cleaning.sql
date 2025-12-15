UPDATE deliveries SET order_date=NULL  WHERE order_date='0000-00-00';
UPDATE deliveries SET promised_date=NULL WHERE promised_date='0000-00-00';
UPDATE deliveries SET delivered_date=NULL WHERE delivered_date='0000-00-00';

UPDATE deliveries SET courier='Unknown' WHERE courier IS NULL;

UPDATE deliveries SET courier='BlueDart' WHERE courier='Blue Dart';
UPDATE deliveries SET courier='Ekart' WHERE courier='E-kart';
UPDATE deliveries SET courier='Delhivery' WHERE courier='Delhivry';
UPDATE deliveries SET courier='XpressBees' WHERE courier='XprsBees';

UPDATE deliveries SET delay_days=0 WHERE delay_days < 0;

ALTER TABLE deliveries ADD id INT AUTO_INCREMENT PRIMARY KEY;

DELETE d1 FROM deliveries d1
JOIN deliveries d2
ON d1.order_id = d2.order_id AND d1.id > d2.id;
