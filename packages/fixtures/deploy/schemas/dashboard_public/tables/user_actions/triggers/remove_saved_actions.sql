-- Deploy schemas/dashboard_public/tables/user_actions/triggers/remove_saved_actions to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table

BEGIN;

CREATE FUNCTION dashboard_private.tg_remove_saved_action()
RETURNS TRIGGER AS $$
DECLARE
BEGIN
    IF (NEW.complete = TRUE AND NEW.verified = TRUE) THEN 
        DELETE FROM dashboard_public.user_saved_actions s 
            WHERE s.user_id = NEW.user_id AND s.action_id = NEW.action_id;
    END IF;

    RETURN NEW;
END;
$$
LANGUAGE 'plpgsql' VOLATILE; 

CREATE TRIGGER remove_saved_action_on_insert
AFTER UPDATE ON dashboard_public.user_actions
FOR EACH ROW
WHEN (NEW.complete IS DISTINCT FROM OLD.complete)
EXECUTE PROCEDURE dashboard_private.tg_remove_saved_action ();

CREATE TRIGGER remove_saved_action_on_update
AFTER INSERT ON dashboard_public.user_actions
FOR EACH ROW
EXECUTE PROCEDURE dashboard_private.tg_remove_saved_action ();


COMMIT;
