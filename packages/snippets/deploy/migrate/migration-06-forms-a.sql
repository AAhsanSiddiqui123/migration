-- Deploy launchql-snippets:migrate/migration-06-forms-a to pg

BEGIN;

CREATE FUNCTION "dashboard_private".user_form_populate_user_answers ()
    RETURNS TRIGGER
    AS $LQLCODEZ$

DECLARE
   the_form_id uuid;
   the_question_id uuid;

   the_user_form_id uuid;
   the_user_question_id uuid;

   the_owner_id uuid;
   the_user_id uuid;
   the_question_order int;

BEGIN

    the_form_id = NEW.form_id;
    the_user_form_id = NEW.id;
    the_user_id = NEW.user_id;

    ---
    FOR 
        the_question_id,
        the_owner_id,
        the_question_order
        IN
    SELECT a.question_id, owner_id, a.question_order
    FROM "dashboard_public".form_questions a
    WHERE form_id = the_form_id
    ORDER BY question_order
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
CREATE TRIGGER _0000_user_form_pop_user_answers
    AFTER INSERT ON "dashboard_public".user_forms
    FOR EACH ROW
    EXECUTE PROCEDURE "dashboard_private".user_form_populate_user_answers ();

COMMIT;

