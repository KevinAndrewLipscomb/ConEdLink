START TRANSACTION;

ALTER TABLE `service` ADD COLUMN `primary_response_area` VARCHAR(255) NULL;

COMMIT