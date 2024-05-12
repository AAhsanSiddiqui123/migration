-- Deploy schemas/dashboard_public/procedures/duplicate_question_templates to pg

-- requires: schemas/dashboard_public/schema

BEGIN;

-- FUNCTION: dashboard_public.duplicate_question_templates(uuid, text)

-- DROP FUNCTION IF EXISTS dashboard_public.duplicate_question_templates(uuid, text);

CREATE OR REPLACE FUNCTION dashboard_public.duplicate_question_templates(
	old_question_template_id uuid,
	question_template_name text)
    RETURNS dashboard_public.question_templates
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
   v_old_question_templates "dashboard_public".question_templates;
   v_new_question_templates "dashboard_public".question_templates;
   v_name text;
BEGIN
SELECT * FROM "dashboard_public".question_templates q 
  WHERE q.id = old_question_template_id
   INTO v_old_question_templates;
  IF (NOT FOUND) THEN
     RAISE EXCEPTION 'Question Template Not Found';
  ELSE
	  SELECT name FROM "dashboard_public".question_templates q 
	  WHERE q.name = question_template_name
	  INTO v_name;
	  IF (FOUND) THEN
		 RAISE EXCEPTION 'name already exists';
	  ELSE 
		  INSERT INTO dashboard_public.question_templates(name, question_prompt,  question_type_id, description, rich_description, image, label, help_text, placeholder, is_reusable, is_private, is_required, min, max, pattern, error_text)
		  VALUES (question_template_name, v_old_question_templates.question_prompt,  v_old_question_templates.question_type_id, v_old_question_templates.description, v_old_question_templates.rich_description, v_old_question_templates.image, v_old_question_templates.label, v_old_question_templates.help_text, v_old_question_templates.placeholder, v_old_question_templates.is_reusable, v_old_question_templates.is_private, v_old_question_templates.is_required, v_old_question_templates.min, v_old_question_templates.max, v_old_question_templates.pattern, v_old_question_templates.error_text)
		  RETURNING * INTO v_new_question_templates;
		  PERFORM "dashboard_public".duplicate_question_templates_language_variations(old_question_template_id,v_new_question_templates.id,question_template_name);
		  PERFORM "dashboard_public".duplicate_question_values_by_question_template(old_question_template_id,v_new_question_templates.id);
		   RETURN v_new_question_templates;
	  END IF;
    END IF;
END;
$BODY$;

ALTER FUNCTION dashboard_public.duplicate_question_templates(uuid, text)
    OWNER TO postgres;

GRANT EXECUTE ON FUNCTION dashboard_public.duplicate_question_templates(uuid, text) TO administrator;

GRANT EXECUTE ON FUNCTION dashboard_public.duplicate_question_templates(uuid, text) TO authenticated;

GRANT EXECUTE ON FUNCTION dashboard_public.duplicate_question_templates(uuid, text) TO postgres;

REVOKE ALL ON FUNCTION dashboard_public.duplicate_question_templates(uuid, text) FROM anonymous;

REVOKE ALL ON FUNCTION dashboard_public.duplicate_question_templates(uuid, text) FROM PUBLIC;

COMMIT;
