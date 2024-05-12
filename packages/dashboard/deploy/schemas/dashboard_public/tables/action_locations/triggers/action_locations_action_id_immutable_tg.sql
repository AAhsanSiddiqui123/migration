-- Deploy: schemas/dashboard_public/tables/action_locations/triggers/action_locations_action_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_locations/table

BEGIN;
CREATE TRIGGER action_locations_action_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".action_locations 
 FOR EACH ROW 
 WHEN (OLD.action_id IS DISTINCT FROM NEW.action_id AND old.action_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'action_id' );
COMMIT;
