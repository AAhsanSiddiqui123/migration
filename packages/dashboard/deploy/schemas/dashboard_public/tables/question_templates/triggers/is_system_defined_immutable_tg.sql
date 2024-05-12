-- Deploy schemas/dashboard_public/tables/question_templates/triggers/is_system_defined_immutable_tg to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table

BEGIN;



CREATE FUNCTION dashboard_private.tg_is_system_defined_immutable_tg()
RETURNS TRIGGER AS $$
BEGIN
  IF (OLD.is_system_defined = true) THEN 
    RAISE EXCEPTION 'System_Defined_Record_Not_Allowed_To_Delete';
  END IF;
END;
$$
LANGUAGE 'plpgsql' VOLATILE; -- TODO VOLATILE or IMMUTABLE or STABLE?

CREATE TRIGGER is_system_defined_immutable_tg
BEFORE DELETE ON dashboard_public.question_templates
FOR EACH ROW
EXECUTE PROCEDURE dashboard_private.tg_is_system_defined_immutable_tg ();



COMMIT;
