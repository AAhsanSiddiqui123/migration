-- Deploy: schemas/dashboard_public/tables/group_locations/triggers/_000000000_ensure_update_group_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/group_locations/table
-- requires: schemas/dashboard_private/trigger_fns/group_locations_denorm_group_id

BEGIN;
CREATE TRIGGER _000000000_ensure_update_group_id 
 BEFORE UPDATE ON "dashboard_public".group_locations 
 FOR EACH ROW 
 WHEN (OLD.group_id IS DISTINCT FROM NEW.group_id OR OLD.owner_id IS DISTINCT FROM NEW.owner_id) 
 EXECUTE PROCEDURE "dashboard_private".group_locations_denorm_group_id ( );
COMMIT;
