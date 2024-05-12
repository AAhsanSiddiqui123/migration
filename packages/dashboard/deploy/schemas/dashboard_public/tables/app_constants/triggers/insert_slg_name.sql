-- Deploy: schemas/dashboard_public/tables/app_constants/triggers/insert_slg_name to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/app_constants/table
-- requires: schemas/dashboard_private/trigger_fns/app_constants_slg_name

BEGIN;
CREATE TRIGGER insert_slg_name 
 BEFORE INSERT ON "dashboard_public".app_constants 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".app_constants_slg_name ( );
COMMIT;
