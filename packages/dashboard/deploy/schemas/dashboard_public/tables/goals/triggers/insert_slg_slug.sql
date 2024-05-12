-- Deploy: schemas/dashboard_public/tables/goals/triggers/insert_slg_slug to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/goals/table
-- requires: schemas/dashboard_private/trigger_fns/goals_slg_slug

BEGIN;
CREATE TRIGGER insert_slg_slug 
 BEFORE INSERT ON "dashboard_public".goals 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".goals_slg_slug ( );
COMMIT;
