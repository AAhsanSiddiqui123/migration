-- Deploy: schemas/dashboard_public/tables/user_tracks/triggers/_000000000_ensure_update_track_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/user_tracks/table
-- requires: schemas/dashboard_private/trigger_fns/user_tracks_denorm_track_id

BEGIN;
CREATE TRIGGER _000000000_ensure_update_track_id 
 BEFORE UPDATE ON "dashboard_public".user_tracks 
 FOR EACH ROW 
 WHEN (OLD.track_id IS DISTINCT FROM NEW.track_id OR OLD.owner_id IS DISTINCT FROM NEW.owner_id) 
 EXECUTE PROCEDURE "dashboard_private".user_tracks_denorm_track_id ( );
COMMIT;
