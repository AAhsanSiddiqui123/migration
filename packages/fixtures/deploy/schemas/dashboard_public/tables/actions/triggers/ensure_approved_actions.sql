-- Deploy schemas/dashboard_public/tables/actions/triggers/ensure_approved_actions to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;

CREATE FUNCTION dashboard_private.tg_ensure_approved_actions()
RETURNS TRIGGER AS $$
BEGIN
    IF (NEW.is_approved IS FALSE) THEN 
        NEW.is_published = FALSE;
    END IF;
 RETURN NEW;
END;
$$
LANGUAGE 'plpgsql' VOLATILE; 

CREATE TRIGGER ensure_approved_actions
BEFORE INSERT ON dashboard_public.actions
FOR EACH ROW
EXECUTE PROCEDURE dashboard_private.tg_ensure_approved_actions ();

CREATE TRIGGER ensure_approved_actions_update
BEFORE UPDATE ON dashboard_public.actions
FOR EACH ROW
WHEN (NEW.is_published IS DISTINCT FROM OLD.is_published)
EXECUTE PROCEDURE dashboard_private.tg_ensure_approved_actions ();

COMMIT;
