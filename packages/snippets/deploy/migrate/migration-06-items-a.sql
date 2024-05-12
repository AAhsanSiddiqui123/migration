-- Deploy launchql-snippets:migrate/migration-06-items-a to pg

BEGIN;
CREATE FUNCTION "dashboard_private".user_action_populate_action_items ()
    RETURNS TRIGGER
    AS $LQLCODEZ$

DECLARE
   the_action_id uuid;
   the_action_item_id uuid;

   the_user_action_id uuid;
   the_user_action_item_id uuid;

   the_owner_id uuid;
   the_user_id uuid;
   v_item_order int;

BEGIN

    the_action_id = NEW.action_id;
    the_user_action_id = NEW.id;
    the_user_id = NEW.user_id;

    ---
    FOR 
        the_action_item_id,
        the_owner_id,
        v_item_order
        IN
    SELECT a.id, owner_id, a.item_order
    FROM "dashboard_public".action_items a
    WHERE action_id = the_action_id
    ORDER BY item_order
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
CREATE TRIGGER _0000_user_action_pop_action_items
    AFTER INSERT ON "dashboard_public".user_actions
    FOR EACH ROW
    EXECUTE PROCEDURE "dashboard_private".user_action_populate_action_items ();

COMMIT;

