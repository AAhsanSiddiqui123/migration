-- Deploy dashboard:schemas/dashboard_public/tables/question_templates/migration/add_system_defined_question_templates to pg

do $$
BEGIN

IF (NOT EXISTS(SELECT * from dashboard_public.question_types WHERE name='Text')) THEN
	INSERT INTO dashboard_public.question_types(id, name, description, slug, ref_num, field_type)
		VALUES ('dc0ca6bc-e90e-433f-3888-079b27eee07d', 'Text', 'Standard Question Input', 'text', 1, 'text');
END IF;


IF NOT EXISTS(SELECT * from dashboard_public.question_types WHERE name='Email') THEN
	INSERT INTO dashboard_public.question_types(id, name, description, slug, ref_num, field_type)
		VALUES ('dc6201fa-3381-40c3-ae80-d30e87059e9a', 'Email', 'Used for validating an email is an email', 'email', 2, 'text');
END IF;




IF NOT EXISTS(SELECT * from dashboard_public.question_templates WHERE id='dc0cabd6-3eca-4277-8f70-2f40420adc5b') THEN
	INSERT INTO dashboard_public.question_templates(id, name, question_prompt,question_type_id, label, is_reusable,  is_required,is_system_defined)
	VALUES ('dc0cabd6-3eca-4277-8f70-2f40420adc5b', 'First Name', 'First Name',(SELECT id from dashboard_public.question_types WHERE name='Text' LIMIT 1), 'First Name', TRUE,  TRUE,  TRUE);
ELSE
   UPDATE dashboard_public.question_templates SET is_system_defined = TRUE WHERE id='dc0cabd6-3eca-4277-8f70-2f40420adc5b';
END	IF;



IF NOT EXISTS(SELECT * from dashboard_public.question_templates WHERE id='dca4a569-e04c-488a-cd32-af556ea7cb0e') THEN
	INSERT INTO dashboard_public.question_templates(id, name, question_prompt,question_type_id, label, is_reusable,  is_required,is_system_defined)
	VALUES ('dca4a569-e04c-488a-cd32-af556ea7cb0e', 'Last Name', 'Last Name',(SELECT id from dashboard_public.question_types WHERE name='Text' LIMIT 1), 'Last Name', TRUE,  TRUE,  TRUE);
ELSE
   UPDATE dashboard_public.question_templates SET is_system_defined = TRUE WHERE id='dca4a569-e04c-488a-cd32-af556ea7cb0e';
END	IF;


IF NOT EXISTS(SELECT * from dashboard_public.question_templates WHERE id='dc0cb77e-a38c-4e99-2694-b6dcc3b99c5b') THEN
	INSERT INTO dashboard_public.question_templates(id, name, question_prompt,question_type_id, label, is_reusable,  is_required,is_system_defined)
	VALUES ('dc0cb77e-a38c-4e99-2694-b6dcc3b99c5b', 'Email', 'Email',(SELECT id from dashboard_public.question_types WHERE name='Email' LIMIT 1), 'Email', TRUE,  FALSE,  TRUE);
ELSE
   UPDATE dashboard_public.question_templates SET is_system_defined = TRUE WHERE id='dc0cb77e-a38c-4e99-2694-b6dcc3b99c5b';
END	IF;

IF NOT EXISTS(SELECT * from dashboard_public.question_templates WHERE id='dca4986a-a52a-4257-a5dd-fa3f42afb495') THEN
	INSERT INTO dashboard_public.question_templates(id, name, question_prompt,question_type_id, label, is_reusable,  is_required,is_system_defined)
    VALUES ('dca4986a-a52a-4257-a5dd-fa3f42afb495', 'Address line one', 'Address line one',(SELECT id from dashboard_public.question_types WHERE name='Text' LIMIT 1), 'Address line one', TRUE,  FALSE,  TRUE);
ELSE
   UPDATE dashboard_public.question_templates SET is_system_defined = TRUE WHERE id='dca4986a-a52a-4257-a5dd-fa3f42afb495';
END	IF;


IF NOT EXISTS(SELECT * from dashboard_public.question_templates WHERE id='dc0c87cd-87d5-4842-81b3-09568f69bc80') THEN
	INSERT INTO dashboard_public.question_templates(id, name, question_prompt,question_type_id, label, is_reusable,  is_required,is_system_defined)
    VALUES ('dc0c87cd-87d5-4842-81b3-09568f69bc80', 'Address line two', 'Address line two',(SELECT id from dashboard_public.question_types WHERE name='Text' LIMIT 1), 'Address line two', TRUE,  FALSE,  TRUE);
ELSE
   UPDATE dashboard_public.question_templates SET is_system_defined = TRUE WHERE id='dc0c87cd-87d5-4842-81b3-09568f69bc80';	
END	IF;


IF NOT EXISTS(SELECT * from dashboard_public.question_templates WHERE id='dca4c51d-d6bd-4026-f1ab-4b3faeff350d') THEN
	INSERT INTO dashboard_public.question_templates(id, name, question_prompt,question_type_id, label, is_reusable,  is_required,is_system_defined)
    VALUES ('dca4c51d-d6bd-4026-f1ab-4b3faeff350d', 'Address line three', 'Address line three',(SELECT id from dashboard_public.question_types WHERE name='Text' LIMIT 1), 'Address line three', TRUE,  FALSE,  TRUE);
ELSE
   UPDATE dashboard_public.question_templates SET is_system_defined = TRUE WHERE id='dca4c51d-d6bd-4026-f1ab-4b3faeff350d';
END	IF;



IF NOT EXISTS(SELECT * from dashboard_public.question_templates WHERE id='dca4ce0e-4676-4cc3-0381-caa58aa718fc') THEN
	INSERT INTO dashboard_public.question_templates(id, name, question_prompt,question_type_id, label, is_reusable,  is_required,is_system_defined)
    VALUES ('dca4ce0e-4676-4cc3-0381-caa58aa718fc', 'City', 'City',(SELECT id from dashboard_public.question_types WHERE name='Text' LIMIT 1), 'City', TRUE,  FALSE,  TRUE);
ELSE
   UPDATE dashboard_public.question_templates SET is_system_defined = TRUE WHERE id='dca4ce0e-4676-4cc3-0381-caa58aa718fc';
END	IF;




IF NOT EXISTS(SELECT * from dashboard_public.question_templates WHERE id='dc623727-5860-42f4-7148-6954e61190d8') THEN
	INSERT INTO dashboard_public.question_templates(id, name, question_prompt,question_type_id, label, is_reusable,  is_required,is_system_defined)
	VALUES ('dc623727-5860-42f4-7148-6954e61190d8', 'State', 'State',(SELECT id from dashboard_public.question_types WHERE name='Text' LIMIT 1), 'State', TRUE,  FALSE,  TRUE);
ELSE
   UPDATE dashboard_public.question_templates SET is_system_defined = TRUE WHERE id='dc623727-5860-42f4-7148-6954e61190d8';
END	IF;

IF NOT EXISTS(SELECT * from dashboard_public.question_templates WHERE id='dca446bc-568a-4ef2-a9c2-d9fd43793a4f') THEN
	INSERT INTO dashboard_public.question_templates(id, name, question_prompt,question_type_id, label, is_reusable,  is_required,is_system_defined)
	VALUES ('dca446bc-568a-4ef2-a9c2-d9fd43793a4f', 'CountyProvince', 'CountyProvince',(SELECT id from dashboard_public.question_types WHERE name='Text' LIMIT 1), 'CountyProvince', TRUE,  FALSE,  TRUE);
ELSE
   UPDATE dashboard_public.question_templates SET is_system_defined = TRUE WHERE id='dca446bc-568a-4ef2-a9c2-d9fd43793a4f';
END	IF;




IF NOT EXISTS(SELECT * from dashboard_public.question_templates WHERE id='dc0ca053-0bf8-4c34-5d04-c8752b863a55') THEN
	INSERT INTO dashboard_public.question_templates(id, name, question_prompt,question_type_id, label, is_reusable,  is_required,is_system_defined)
	VALUES ('dc0ca053-0bf8-4c34-5d04-c8752b863a55', 'Zipcode', 'Zipcode',(SELECT id from dashboard_public.question_types WHERE name='Text' LIMIT 1), 'Zipcode', TRUE,  FALSE,  TRUE);
ELSE
   UPDATE dashboard_public.question_templates SET is_system_defined = TRUE WHERE id='dc0ca053-0bf8-4c34-5d04-c8752b863a55';
END	IF;


IF NOT EXISTS(SELECT * from dashboard_public.question_templates WHERE id='dca4244d-c457-4df1-125e-442a5d3518f7') THEN
	INSERT INTO dashboard_public.question_templates(id, name, question_prompt,question_type_id, label, is_reusable,  is_required,is_system_defined)
	VALUES ('dca4244d-c457-4df1-125e-442a5d3518f7', 'Apartment Number', 'Apartment Number',(SELECT id from dashboard_public.question_types WHERE name='Text' LIMIT 1), 'Apartment Number', TRUE,  FALSE,  TRUE);
ELSE
   UPDATE dashboard_public.question_templates SET is_system_defined = TRUE WHERE id='dca4244d-c457-4df1-125e-442a5d3518f7';
END	IF;

END;
$$