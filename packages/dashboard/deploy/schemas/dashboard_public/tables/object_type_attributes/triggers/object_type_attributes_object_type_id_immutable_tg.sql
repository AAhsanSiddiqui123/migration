-- Deploy: schemas/dashboard_public/tables/object_type_attributes/triggers/object_type_attributes_object_type_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attributes/table

BEGIN;
CREATE TRIGGER object_type_attributes_object_type_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".object_type_attributes 
 FOR EACH ROW 
 WHEN (OLD.object_type_id IS DISTINCT FROM NEW.object_type_id AND old.object_type_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'object_type_id' );
COMMIT;
