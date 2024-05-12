-- Deploy schemas/dashboard_public/tables/user_dismissed_track_actions/triggers/user_dismissed_track_actions_track_action_id_immutable_tg to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_dismissed_track_actions/table

BEGIN;



CREATE TRIGGER user_dismissed_track_actions_track_action_id_immutable_tg
BEFORE UPDATE ON dashboard_public.user_dismissed_track_actions
FOR EACH ROW
WHEN (OLD.track_action_id IS DISTINCT FROM NEW.track_action_id AND old.track_action_id IS NOT NULL) 
EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'track_action_id' );



COMMIT;
