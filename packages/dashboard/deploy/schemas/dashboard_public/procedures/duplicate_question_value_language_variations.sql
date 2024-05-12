-- Deploy schemas/dashboard_public/procedures/duplicate_question_value_language_variations to pg

-- requires: schemas/dashboard_public/schema

BEGIN;

-- FUNCTION: dashboard_public.duplicate_question_value_language_variations(uuid, uuid)

-- DROP FUNCTION IF EXISTS dashboard_public.duplicate_question_value_language_variations(uuid, uuid);

CREATE FUNCTION dashboard_public.duplicate_question_value_language_variations(
	old_question_value_id uuid,
	new_question_value_id uuid)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
  v_result record;
BEGIN
 FOR v_result IN
	SELECT * FROM "dashboard_public".question_value_language_variations q WHERE q.question_value_id = old_question_value_id
 		LOOP
			INSERT INTO dashboard_public.question_value_language_variations(lang_code, name, description, rich_description, text, owner_id, question_value_id)
			VALUES (v_result.lang_code, v_result.name, v_result.description, v_result.rich_description, v_result.text, v_result.owner_id, new_question_value_id);
  		END LOOP;
RETURN true;
END;
$BODY$;

ALTER FUNCTION dashboard_public.duplicate_question_value_language_variations(uuid, uuid)
    OWNER TO postgres;

GRANT EXECUTE ON FUNCTION dashboard_public.duplicate_question_value_language_variations(uuid, uuid) TO administrator;

GRANT EXECUTE ON FUNCTION dashboard_public.duplicate_question_value_language_variations(uuid, uuid) TO authenticated;

GRANT EXECUTE ON FUNCTION dashboard_public.duplicate_question_value_language_variations(uuid, uuid) TO postgres;

REVOKE ALL ON FUNCTION dashboard_public.duplicate_question_value_language_variations(uuid, uuid) FROM anonymous;

REVOKE ALL ON FUNCTION dashboard_public.duplicate_question_value_language_variations(uuid, uuid) FROM PUBLIC;



COMMIT;
