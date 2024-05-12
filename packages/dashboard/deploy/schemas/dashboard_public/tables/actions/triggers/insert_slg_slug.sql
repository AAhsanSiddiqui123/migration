-- Deploy: schemas/dashboard_public/tables/actions/triggers/insert_slg_slug to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_private/trigger_fns/actions_slg_slug

BEGIN;
CREATE TRIGGER insert_slg_slug 
 BEFORE INSERT ON "dashboard_public".actions 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".actions_slg_slug ( );
COMMIT;
