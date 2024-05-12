-- Deploy launchql-snippets:migrate/migration-06-forms-b to pg

BEGIN;

CREATE FUNCTION "dashboard_private".form_qs_pop_user_answers ()
    RETURNS TRIGGER
    AS $LQLCODEZ$

DECLARE
   the_form_id uuid;
   the_question_id uuid;

   the_user_form_id uuid;

   the_owner_id uuid;
   the_user_id uuid;

BEGIN

    the_form_id = NEW.form_id;
    the_question_id = NEW.question_id;

    FOR 
        the_user_form_id,
        the_user_id,
        the_owner_id
        IN
    SELECT a.id, user_id, owner_id
    FROM "dashboard_public".user_forms a
    WHERE form_id = the_form_id
    AND complete = false
    LOOP

      INSERT INTO "dashboard_public".user_answers (
          form_id,
          question_id,
          owner_id,
          user_id,
          user_form_id,
          complete
      ) VALUES (
          the_form_id,
          the_question_id,
          the_owner_id,
          the_user_id,
          the_user_form_id,
          false
      );
      
    END LOOP;

    --
    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;
--
CREATE TRIGGER _0000_form_questions_pop_user_answers
    AFTER INSERT ON "dashboard_public".form_questions
    FOR EACH ROW
    EXECUTE PROCEDURE "dashboard_private".form_qs_pop_user_answers ();

COMMIT;

