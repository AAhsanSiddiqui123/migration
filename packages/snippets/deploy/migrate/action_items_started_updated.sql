-- Deploy launchql-snippets:migrate/action_items_started_updated to pg

BEGIN;

ALTER TABLE "dashboard_public".user_actions 
    ALTER COLUMN action_started SET DEFAULT NULL;


CREATE FUNCTION "dashboard_private".items_update_user_action ()
    RETURNS TRIGGER
    AS $LQLCODEZ$

DECLARE
    the_user_action_id uuid;
BEGIN

    UPDATE "dashboard_public".user_actions 
        SET items_updated = NOW()
    WHERE id = NEW.user_action_id;

    UPDATE "dashboard_public".user_actions 
        SET action_started = NOW()
    WHERE id = NEW.user_action_id
    AND action_started IS NULL;

    --
    RETURN NEW;
END;
$LQLCODEZ$
LANGUAGE plpgsql
VOLATILE;

--

CREATE TRIGGER _0000_items_update_user_action
    AFTER UPDATE ON "dashboard_public".user_action_items
    FOR EACH ROW
    EXECUTE PROCEDURE "dashboard_private".items_update_user_action ();

COMMIT;