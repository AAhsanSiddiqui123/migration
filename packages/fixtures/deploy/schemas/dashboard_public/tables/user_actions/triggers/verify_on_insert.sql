-- Deploy schemas/dashboard_public/tables/user_actions/triggers/verify_on_insert to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/user_actions/table

BEGIN;

CREATE FUNCTION dashboard_private.tg_verify_user_action()
RETURNS TRIGGER AS $$
BEGIN
    IF (
        SELECT self_verifiable IS TRUE
            FROM dashboard_public.actions a
        WHERE a.id = NEW.action_id
    ) THEN 
        NEW.verified = TRUE;
        NEW.verified_date = CURRENT_TIMESTAMP;
    ELSEIF (TG_OP = 'INSERT') THEN 
            NEW.verified = FALSE;
    END IF;
    RETURN NEW;
END;
$$
LANGUAGE 'plpgsql' VOLATILE;

CREATE TRIGGER verify_on_insert
BEFORE INSERT ON dashboard_public.user_actions
FOR EACH ROW
WHEN (NEW.complete IS TRUE)
EXECUTE PROCEDURE dashboard_private.tg_verify_user_action ();

CREATE TRIGGER verify_on_update
BEFORE UPDATE ON dashboard_public.user_actions
FOR EACH ROW
WHEN (NEW.complete <> OLD.complete AND NEW.verified IS FALSE)
EXECUTE PROCEDURE dashboard_private.tg_verify_user_action ();

COMMIT;
