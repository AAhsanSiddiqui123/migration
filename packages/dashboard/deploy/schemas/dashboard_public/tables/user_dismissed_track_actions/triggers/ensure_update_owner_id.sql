-- Deploy schemas/dashboard_public/tables/user_dismissed_track_actions/triggers/ensure_update_owner_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_dismissed_track_actions/table

BEGIN;



CREATE FUNCTION dashboard_private.user_dismissed_track_actions_ensure_update_owner_id()
RETURNS TRIGGER AS $$
BEGIN
  SELECT ref.owner_id FROM "dashboard_public".track_actions AS ref WHERE ref.id = new.track_action_id
  INTO new.owner_id;
  RETURN NEW;
END;
$$
LANGUAGE 'plpgsql' VOLATILE; -- TODO VOLATILE or IMMUTABLE or STABLE?

CREATE TRIGGER ensure_update_owner_id
BEFORE UPDATE ON dashboard_public.user_dismissed_track_actions
FOR EACH ROW
WHEN (OLD.track_action_id IS DISTINCT FROM NEW.track_action_id OR OLD.owner_id IS DISTINCT FROM NEW.owner_id) 
EXECUTE PROCEDURE dashboard_private.user_dismissed_track_actions_ensure_update_owner_id ();



COMMIT;
