-- Deploy: schemas/dashboard_public/tables/track_types/triggers/insert_inf_ref to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/track_types/table
-- requires: schemas/dashboard_private/trigger_fns/track_types_inf_ref

BEGIN;
CREATE TRIGGER insert_inf_ref 
 BEFORE INSERT ON "dashboard_public".track_types 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".track_types_inf_ref ( );
COMMIT;
