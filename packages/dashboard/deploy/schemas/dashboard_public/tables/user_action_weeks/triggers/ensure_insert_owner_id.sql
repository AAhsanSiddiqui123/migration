-- Deploy schemas/dashboard_public/tables/user_action_weeks/triggers/ensure_insert_owner_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_weeks/table

BEGIN;



CREATE FUNCTION dashboard_private.user_action_weeks_ensure_insert_owner_id()
RETURNS TRIGGER AS $$
BEGIN
 SELECT ref.owner_id
 FROM "dashboard_public".actions AS ref WHERE ref.id = new.action_id
 INTO new.owner_id;

  
 RETURN NEW;
END;
$$
LANGUAGE 'plpgsql' VOLATILE; 

CREATE TRIGGER ensure_insert_owner_id
BEFORE INSERT ON dashboard_public.user_action_weeks
FOR EACH ROW
EXECUTE PROCEDURE dashboard_private.user_action_weeks_ensure_insert_owner_id ();



COMMIT;
