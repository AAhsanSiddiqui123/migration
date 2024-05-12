-- Deploy: schemas/dashboard_public/tables/track_groups/triggers/_000000000_ensure_insert_track_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/track_groups/table
-- requires: schemas/dashboard_private/trigger_fns/track_groups_denorm_track_id

BEGIN;
CREATE TRIGGER _000000000_ensure_insert_track_id 
 BEFORE INSERT ON "dashboard_public".track_groups 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".track_groups_denorm_track_id ( );
COMMIT;
