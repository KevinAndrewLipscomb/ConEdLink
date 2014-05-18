START TRANSACTION
;
insert ignore regional_staffer (region_code,last_name,first_name) values
((select code from region_code_name_map where name = "Federation"),"Fraticelli","Celia"),
((select code from region_code_name_map where name = "Federation"),"Sterndale","Matt"),
((select code from region_code_name_map where name = "Federation"),"Hollinger","Megan")
;
insert ignore regional_staffer_user (id,password_reset_email_address) values
((select id from regional_staffer where first_name = "Celia" and last_name = "Fraticelli"),"celia@ehsf.org"),
((select id from regional_staffer where first_name = "Matt" and last_name = "Sterndale"),"msterndale@ehsf.org"),
((select id from regional_staffer where first_name = "Megan" and last_name = "Hollinger"),"meganh@ehsf.org")
;
insert ignore regional_staffer_role (group_id,user_id) values
((select id from regional_staffer_group where name = "education-specialist"),(select id from regional_staffer_user where password_reset_email_address = "celia@ehsf.org")),
((select id from regional_staffer_group where name = "education-specialist"),(select id from regional_staffer_user where password_reset_email_address = "msterndale@ehsf.org")),
((select id from regional_staffer_group where name = "education-specialist"),(select id from regional_staffer_user where password_reset_email_address = "meganh@ehsf.org"))
;
COMMIT