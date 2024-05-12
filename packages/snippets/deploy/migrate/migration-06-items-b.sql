-- Deploy launchql-snippets:migrate/migration-06-items-b to pg

BEGIN;
CREATE FUNCTION "dashboard_private".action_items_populate_user_action_items ()
    RETURNS TRIGGER
    AS $LQLCODEZ$

DECLARE
   the_action_id uuid;
   the_action_item_id uuid;

   the_user_action_id uuid;

   the_owner_id uuid;
   the_user_id uuid;

BEGIN

    the_action_id = NEW.action_id;
    the_action_item_id = NEW.id;


    FOR 
        the_user_action_id,
        the_user_id,
        the_owner_id
        IN
    SELECT a.id, user_id, owner_id
    FROM "dashboard_public".user_actions a
    WHERE action_id = the_action_id
    AND complete = false
    LOOP

      INSERT INTO "dashboard_public".user_action_items (
          action_id,
          action_item_id,
          owner_id,
          user_id,
          user_action_id,
          complete,
          verified
      ) VALUES (
          the_action_id,
          the_action_item_id,
          the_owner_id,
          the_user_id,
          the_user_action_id,
          false,
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
CREATE TRIGGER _0000_action_items_pop_user_action_items
    AFTER INSERT ON "dashboard_public".action_items
    FOR EACH ROW
    EXECUTE PROCEDURE "dashboard_private".action_items_populate_user_action_items ();

COMMIT;

