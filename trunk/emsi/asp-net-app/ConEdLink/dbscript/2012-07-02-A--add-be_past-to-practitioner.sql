START TRANSACTION
;
ALTER TABLE `practitioner`
  ADD COLUMN `be_past` TINYINT NOT NULL DEFAULT FALSE
;
COMMIT