-- Deploy: schemas/dashboard_public/tables/action_status_types/triggers/update_inf_ref to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/action_status_types/table
-- requires: schemas/dashboard_private/trigger_fns/action_status_types_inf_ref

BEGIN;
CREATE TRIGGER update_inf_ref 
 BEFORE UPDATE ON "dashboard_public".action_status_types 
 FOR EACH ROW 
 WHEN (OLD.ref IS DISTINCT FROM NEW.ref) 
 EXECUTE PROCEDURE "dashboard_private".action_status_types_inf_ref ( );
COMMIT;
