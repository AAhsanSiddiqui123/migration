-- Deploy: schemas/dashboard_public/tables/object_records/triggers/_000000000_ensure_insert_object_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/object_records/table
-- requires: schemas/dashboard_private/trigger_fns/object_records_denorm_object_id

BEGIN;
CREATE TRIGGER _000000000_ensure_insert_object_id 
 BEFORE INSERT ON "dashboard_public".object_records 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".object_records_denorm_object_id ( );
COMMIT;
