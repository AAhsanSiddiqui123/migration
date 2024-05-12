-- Deploy: schemas/dashboard_public/tables/form_types/triggers/insert_slg_slug to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/form_types/table
-- requires: schemas/dashboard_private/trigger_fns/form_types_slg_slug

BEGIN;
CREATE TRIGGER insert_slg_slug 
 BEFORE INSERT ON "dashboard_public".form_types 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".form_types_slg_slug ( );
COMMIT;
