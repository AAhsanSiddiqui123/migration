-- Deploy: schemas/dashboard_public/tables/object_type_value_tracks/triggers/_000000000_ensure_update_track_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/object_type_value_tracks/table
-- requires: schemas/dashboard_private/trigger_fns/object_type_value_tracks_denorm_track_id

BEGIN;
CREATE TRIGGER _000000000_ensure_update_track_id 
 BEFORE UPDATE ON "dashboard_public".object_type_value_tracks 
 FOR EACH ROW 
 WHEN (OLD.track_id IS DISTINCT FROM NEW.track_id OR OLD.owner_id IS DISTINCT FROM NEW.owner_id) 
 EXECUTE PROCEDURE "dashboard_private".object_type_value_tracks_denorm_track_id ( );
COMMIT;
