-- Deploy: schemas/dashboard_public/tables/action_item_types/triggers/insert_slg_slug to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/action_item_types/table
-- requires: schemas/dashboard_private/trigger_fns/action_item_types_slg_slug

BEGIN;
CREATE TRIGGER insert_slg_slug 
 BEFORE INSERT ON "dashboard_public".action_item_types 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".action_item_types_slg_slug ( );
COMMIT;
