-- Deploy: schemas/dashboard_public/tables/object_type_values/triggers/object_type_values_attr_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_values/table

BEGIN;
CREATE TRIGGER object_type_values_attr_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".object_type_values 
 FOR EACH ROW 
 WHEN (OLD.attr_id IS DISTINCT FROM NEW.attr_id AND old.attr_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'attr_id' );
COMMIT;
