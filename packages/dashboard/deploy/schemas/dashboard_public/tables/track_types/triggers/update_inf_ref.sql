-- Deploy: schemas/dashboard_public/tables/track_types/triggers/update_inf_ref to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/track_types/table
-- requires: schemas/dashboard_private/trigger_fns/track_types_inf_ref

BEGIN;
CREATE TRIGGER update_inf_ref 
 BEFORE UPDATE ON "dashboard_public".track_types 
 FOR EACH ROW 
 WHEN (OLD.ref IS DISTINCT FROM NEW.ref) 
 EXECUTE PROCEDURE "dashboard_private".track_types_inf_ref ( );
COMMIT;
