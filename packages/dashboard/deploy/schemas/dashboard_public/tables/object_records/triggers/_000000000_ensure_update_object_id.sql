-- Deploy: schemas/dashboard_public/tables/object_records/triggers/_000000000_ensure_update_object_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/object_records/table
-- requires: schemas/dashboard_private/trigger_fns/object_records_denorm_object_id

BEGIN;
CREATE TRIGGER _000000000_ensure_update_object_id 
 BEFORE UPDATE ON "dashboard_public".object_records 
 FOR EACH ROW 
 WHEN (OLD.object_id IS DISTINCT FROM NEW.object_id OR OLD.is_private IS DISTINCT FROM NEW.is_private OR OLD.owner_id IS DISTINCT FROM NEW.owner_id) 
 EXECUTE PROCEDURE "dashboard_private".object_records_denorm_object_id ( );
COMMIT;
