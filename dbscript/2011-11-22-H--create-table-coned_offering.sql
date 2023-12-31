DROP TABLE IF EXISTS coned_offering;
CREATE TABLE IF NOT EXISTS coned_offering (
  id SERIAL,
  class_id BIGINT UNSIGNED NOT NULL,
  course_id BIGINT UNSIGNED NOT NULL,
  class_number CHAR(14),
  created_by BIGINT UNSIGNED NOT NULL,
  date_created DATE NOT NULL,
  last_edited_by BIGINT UNSIGNED NOT NULL,
  date_last_edited DATE NOT NULL,
  sponsor_id BIGINT UNSIGNED,
  sponsor_number CHAR(7),
  document_status BIGINT UNSIGNED NOT NULL,
  class_final_status_id BIGINT UNSIGNED,
  course_number CHAR(6) NOT NULL,
  location VARCHAR(127),
  student_cost DECIMAL(10,2) UNSIGNED,
  tuition_includes VARCHAR(510),
  closed BOOLEAN DEFAULT FALSE NOT NULL,
  estimated_students MEDIUMINT UNSIGNED,
  start_date_time DATE NOT NULL,
  end_date_time DATE NOT NULL,
  start_time VARCHAR(15),
  end_time VARCHAR(15),
  other_dates_and_times VARCHAR(510),
  instructors VARCHAR(127),
  instructor_qualifications VARCHAR(127),
  public_contact_name VARCHAR(63),
  public_contact_phone VARCHAR(31),
  public_contact_email VARCHAR(63),
  public_contact_website VARCHAR(63),
  public_contact_notes VARCHAR(510),
  date_submitted_to_region DATE,
  date_received_by_region DATE,
  date_sponsor_notified DATE,
  date_registration_sent_to_state DATE,
  date_cards_sent_to_sponsor DATE,
  date_materials_to_be_returned DATE,
  approved BOOLEAN DEFAULT "1" NOT NULL,
  region_comments VARCHAR(255),
  region_council_num TINYINT UNSIGNED NOT NULL,
  class_county_code TINYINT UNSIGNED NOT NULL,
  total_class_hours DECIMAL(5,1) UNSIGNED,
  location_address_1 VARCHAR(63),
  location_address_2 VARCHAR(31),
  location_city VARCHAR(31),
  location_state CHAR(2),
  location_zip CHAR(5),
  location_zip_plus_4 CHAR(4),
  location_phone VARCHAR(31),
  location_email VARCHAR(63),
  location_of_registration VARCHAR(63),
  primary_text VARCHAR(127),
  additional_texts VARCHAR(127),
  final_registration_date DATE,
  offered_as_college_credit BOOLEAN DEFAULT FALSE NOT NULL,
  practical_exam_date DATE,
  written_exam_date DATE,
  disapproval_reason_id BIGINT UNSIGNED,
  date_final_paperwork_received DATE,
  signed_hardcopy BOOLEAN DEFAULT FALSE NOT NULL,
  created_by_first_name VARCHAR(31) NOT NULL,
  created_by_last_name VARCHAR(31) NOT NULL,
  class_disapproval_reason_description VARCHAR(63),
  sponsor_name VARCHAR(127),
  courses_course_number CHAR(6) NOT NULL,
  course_title VARCHAR(63) NOT NULL,
  PRIMARY KEY(id),
  UNIQUE (class_id),
  UNIQUE (class_number)
)
ENGINE = InnoDB;
ALTER TABLE `coned_offering`
  ADD INDEX `coned_offering_document_status` (`document_status` ASC),
  ADD INDEX `coned_offering_class_final_status` (`class_final_status_id` ASC),
  ADD CONSTRAINT `coned_offering_class_final_status` FOREIGN KEY (`class_final_status_id` ) REFERENCES `coned_offering_class_final_status` (`id` ),
  ADD CONSTRAINT `coned_offering_document_status` FOREIGN KEY (`document_status` ) REFERENCES `coned_offering_document_status` (`id` );
