-- Deploy schemas/dashboard_public/tables/addresses/triggers/upsert_user_question_template_answers_addresses to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table

BEGIN;



CREATE FUNCTION dashboard_private.tg_upsert_user_question_template_answers_addresses()
RETURNS TRIGGER AS $$
BEGIN
 
IF NEW.address_line_1 IS NOT NULL THEN
 INSERT INTO dashboard_public.user_question_template_answers(user_id, question_template_id, answer) VALUES (NEW.owner_id,'dca4986a-a52a-4257-a5dd-fa3f42afb495',trim(NEW.address_line_1))
        ON CONFLICT(user_id, question_template_id)
        DO 
        UPDATE SET answer = NEW.address_line_1;
END IF;


IF NEW.address_line_2 IS NOT NULL THEN
 INSERT INTO dashboard_public.user_question_template_answers(user_id, question_template_id, answer) VALUES (NEW.owner_id,'dc0c87cd-87d5-4842-81b3-09568f69bc80',trim(NEW.address_line_2))
        ON CONFLICT(user_id, question_template_id)
        DO 
        UPDATE SET answer = NEW.address_line_2;
END IF;



IF NEW.address_line_3 IS NOT NULL THEN
 INSERT INTO dashboard_public.user_question_template_answers(user_id, question_template_id, answer) VALUES (NEW.owner_id,'dca4c51d-d6bd-4026-f1ab-4b3faeff350d',trim(NEW.address_line_3))
        ON CONFLICT(user_id, question_template_id)
        DO 
        UPDATE SET answer = NEW.address_line_3;
END IF;





IF NEW.city IS NOT NULL THEN
 INSERT INTO dashboard_public.user_question_template_answers(user_id, question_template_id, answer) VALUES (NEW.owner_id,'dca4ce0e-4676-4cc3-0381-caa58aa718fc',trim(NEW.city))
        ON CONFLICT(user_id, question_template_id)
        DO 
        UPDATE SET answer = NEW.city;
END IF;




IF NEW.state IS NOT NULL THEN
 INSERT INTO dashboard_public.user_question_template_answers(user_id, question_template_id, answer) VALUES (NEW.owner_id,'dc623727-5860-42f4-7148-6954e61190d8',trim(NEW.state))
        ON CONFLICT(user_id, question_template_id)
        DO 
        UPDATE SET answer = NEW.state;
END IF;




IF NEW.county_province IS NOT NULL THEN
 INSERT INTO dashboard_public.user_question_template_answers(user_id, question_template_id, answer) VALUES (NEW.owner_id,'dca446bc-568a-4ef2-a9c2-d9fd43793a4f',trim(NEW.county_province))
        ON CONFLICT(user_id, question_template_id)
        DO 
        UPDATE SET answer = NEW.county_province;
END IF;



IF NEW.postcode IS NOT NULL THEN
INSERT INTO dashboard_public.user_question_template_answers(user_id, question_template_id, answer) VALUES (NEW.owner_id,'dc0ca053-0bf8-4c34-5d04-c8752b863a55',trim(NEW.postcode))
        ON CONFLICT(user_id, question_template_id)
        DO 
        UPDATE SET answer = NEW.postcode;
END IF;




IF NEW.other IS NOT NULL THEN
 INSERT INTO dashboard_public.user_question_template_answers(user_id, question_template_id, answer) VALUES (NEW.owner_id,'dca4244d-c457-4df1-125e-442a5d3518f7',trim(NEW.other))
        ON CONFLICT(user_id, question_template_id)
        DO 
        UPDATE SET answer = NEW.other;
END IF;
 
RETURN NEW;
END;
$$
LANGUAGE 'plpgsql' VOLATILE; -- TODO VOLATILE or IMMUTABLE or STABLE?

CREATE TRIGGER upsert_user_question_template_answers_addresses
AFTER INSERT OR UPDATE ON dashboard_public.addresses
FOR EACH ROW
EXECUTE PROCEDURE dashboard_private.tg_upsert_user_question_template_answers_addresses ();



COMMIT;
