-- Deploy schemas/dashboard_public/tables/user_action_weeks/triggers/ensure_update_owner_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_weeks/table

BEGIN;



CREATE FUNCTION dashboard_private.user_action_weeks_ensure_update_owner_id()
RETURNS TRIGGER AS $$
BEGIN
 SELECT ref.owner_id
 FROM "dashboard_public".actions AS ref WHERE ref.id = new.action_id
 INTO new.owner_id;
 
 RETURN NEW;
END;
$$
LANGUAGE 'plpgsql' VOLATILE; 

CREATE TRIGGER ensure_update_owner_id
BEFORE UPDATE ON dashboard_public.user_action_weeks
FOR EACH ROW
WHEN (OLD.action_id IS DISTINCT FROM NEW.action_id  OR OLD.owner_id IS DISTINCT FROM NEW.owner_id) 
EXECUTE PROCEDURE dashboard_private.user_action_weeks_ensure_update_owner_id ();



COMMIT;
