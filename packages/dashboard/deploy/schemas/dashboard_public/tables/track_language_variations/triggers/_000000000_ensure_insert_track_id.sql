-- Deploy: schemas/dashboard_public/tables/track_language_variations/triggers/_000000000_ensure_insert_track_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/track_language_variations/table
-- requires: schemas/dashboard_private/trigger_fns/track_language_variations_denorm_track_id

BEGIN;
CREATE TRIGGER _000000000_ensure_insert_track_id 
 BEFORE INSERT ON "dashboard_public".track_language_variations 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".track_language_variations_denorm_track_id ( );
COMMIT;
