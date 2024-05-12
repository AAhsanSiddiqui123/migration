-- Deploy: schemas/dashboard_public/tables/object_attributes/triggers/object_attributes_object_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_attributes/table

BEGIN;
CREATE TRIGGER object_attributes_object_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".object_attributes 
 FOR EACH ROW 
 WHEN (OLD.object_id IS DISTINCT FROM NEW.object_id AND old.object_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'object_id' );
COMMIT;
