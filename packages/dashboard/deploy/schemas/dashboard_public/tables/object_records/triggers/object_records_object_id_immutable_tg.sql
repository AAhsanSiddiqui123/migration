-- Deploy: schemas/dashboard_public/tables/object_records/triggers/object_records_object_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_records/table

BEGIN;
CREATE TRIGGER object_records_object_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".object_records 
 FOR EACH ROW 
 WHEN (OLD.object_id IS DISTINCT FROM NEW.object_id AND old.object_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'object_id' );
COMMIT;
