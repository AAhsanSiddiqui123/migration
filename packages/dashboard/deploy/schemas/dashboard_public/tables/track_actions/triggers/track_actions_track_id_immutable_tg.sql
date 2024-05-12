-- Deploy: schemas/dashboard_public/tables/track_actions/triggers/track_actions_track_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table

BEGIN;
CREATE TRIGGER track_actions_track_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".track_actions 
 FOR EACH ROW 
 WHEN (OLD.track_id IS DISTINCT FROM NEW.track_id AND old.track_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'track_id' );
COMMIT;
