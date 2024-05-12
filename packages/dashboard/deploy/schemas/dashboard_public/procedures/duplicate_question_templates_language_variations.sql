-- Deploy schemas/dashboard_public/procedures/duplicate_question_templates_language_variations to pg

-- requires: schemas/dashboard_public/schema

BEGIN;

-- FUNCTION: dashboard_public.duplicate_question_templates_language_variations(uuid, uuid, text)

-- DROP FUNCTION IF EXISTS dashboard_public.duplicate_question_templates_language_variations(uuid, uuid, text);

CREATE FUNCTION dashboard_public.duplicate_question_templates_language_variations(
	old_question_template_id uuid,
	new_question_template_id uuid,
	question_template_name text)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
  v_result record;
BEGIN
 FOR v_result IN
	SELECT * FROM "dashboard_public".question_template_language_variations q WHERE q.question_template_id = old_question_template_id
 		LOOP
         INSERT INTO dashboard_public.question_template_language_variations(lang_code, question_prompt, description, rich_description, label, help_text, placeholder, question_template_id, error_text)
	     VALUES (v_result.lang_code, v_result.question_prompt, v_result.description, v_result.rich_description, v_result.label, v_result.help_text, v_result.placeholder, new_question_template_id, v_result.error_text);
  	END LOOP;
RETURN TRUE;
END;
$BODY$;

ALTER FUNCTION dashboard_public.duplicate_question_templates_language_variations(uuid, uuid, text)
    OWNER TO postgres;


GRANT EXECUTE ON FUNCTION dashboard_public.duplicate_question_templates_language_variations(uuid, uuid, text) TO administrator;

GRANT EXECUTE ON FUNCTION dashboard_public.duplicate_question_templates_language_variations(uuid, uuid, text) TO authenticated;

GRANT EXECUTE ON FUNCTION dashboard_public.duplicate_question_templates_language_variations(uuid, uuid, text) TO postgres;


REVOKE ALL ON FUNCTION dashboard_public.duplicate_question_templates_language_variations(uuid, uuid, text) FROM anonymous;

REVOKE ALL ON FUNCTION dashboard_public.duplicate_question_templates_language_variations(uuid, uuid, text) FROM PUBLIC;


COMMIT;
