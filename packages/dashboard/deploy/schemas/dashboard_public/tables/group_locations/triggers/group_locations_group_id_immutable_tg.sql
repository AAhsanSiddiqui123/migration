-- Deploy: schemas/dashboard_public/tables/group_locations/triggers/group_locations_group_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_locations/table

BEGIN;
CREATE TRIGGER group_locations_group_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".group_locations 
 FOR EACH ROW 
 WHEN (OLD.group_id IS DISTINCT FROM NEW.group_id AND old.group_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'group_id' );
COMMIT;
