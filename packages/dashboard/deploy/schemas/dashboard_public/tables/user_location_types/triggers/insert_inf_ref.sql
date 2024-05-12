-- Deploy: schemas/dashboard_public/tables/user_location_types/triggers/insert_inf_ref to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/user_location_types/table
-- requires: schemas/dashboard_private/trigger_fns/user_location_types_inf_ref

BEGIN;
CREATE TRIGGER insert_inf_ref 
 BEFORE INSERT ON "dashboard_public".user_location_types 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".user_location_types_inf_ref ( );
COMMIT;
