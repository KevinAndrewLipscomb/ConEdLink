ALTER TABLE fy_calendar
 ADD COLUMN be_processed BOOLEAN NOT NULL DEFAULT FALSE AFTER `value`;
