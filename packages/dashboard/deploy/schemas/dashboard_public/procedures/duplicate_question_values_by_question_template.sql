-- Deploy schemas/dashboard_public/procedures/duplicate_question_values_by_question_template to pg

-- requires: schemas/dashboard_public/schema

BEGIN;
-- FUNCTION: dashboard_public.duplicate_question_values_by_question_template(uuid, uuid)

-- DROP FUNCTION IF EXISTS dashboard_public.duplicate_question_values_by_question_template(uuid, uuid);

CREATE FUNCTION dashboard_public.duplicate_question_values_by_question_template(
	old_question_template_id uuid,
	new_question_template_id uuid)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
  v_new_question_values "dashboard_public".question_values;
  v_result record;
BEGIN
 FOR v_result IN
	SELECT * FROM "dashboard_public".question_values q WHERE q.template_id = old_question_template_id
 		LOOP
			INSERT INTO dashboard_public.question_values(name, description, rich_description, value_order, location, text, "numeric", checkbox, image, data, is_other,  owner_id, template_id, question_id, "boolean")
			VALUES(v_result.name, v_result.description, v_result.rich_description, v_result.value_order, v_result.location, v_result.text, v_result."numeric", v_result.checkbox, v_result.image, v_result.data, v_result.is_other,  v_result.owner_id, new_question_template_id, v_result.question_id, v_result."boolean")
			RETURNING * INTO v_new_question_values;
	  		PERFORM "dashboard_public".duplicate_question_value_language_variations(v_result.id,v_new_question_values.id);

  		END LOOP;
RETURN true;
END;
$BODY$;

ALTER FUNCTION dashboard_public.duplicate_question_values_by_question_template(uuid, uuid)
    OWNER TO postgres;


GRANT EXECUTE ON FUNCTION dashboard_public.duplicate_question_values_by_question_template(uuid, uuid) TO administrator;

GRANT EXECUTE ON FUNCTION dashboard_public.duplicate_question_values_by_question_template(uuid, uuid) TO authenticated;

GRANT EXECUTE ON FUNCTION dashboard_public.duplicate_question_values_by_question_template(uuid, uuid) TO postgres;


REVOKE ALL ON FUNCTION dashboard_public.duplicate_question_values_by_question_template(uuid, uuid) FROM anonymous;

REVOKE ALL ON FUNCTION dashboard_public.duplicate_question_values_by_question_template(uuid, uuid) FROM PUBLIC;



COMMIT;
