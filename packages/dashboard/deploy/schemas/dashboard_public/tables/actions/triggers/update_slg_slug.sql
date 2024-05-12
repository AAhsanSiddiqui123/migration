-- Deploy: schemas/dashboard_public/tables/actions/triggers/update_slg_slug to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_private/trigger_fns/actions_slg_slug

BEGIN;
CREATE TRIGGER update_slg_slug 
 BEFORE UPDATE ON "dashboard_public".actions 
 FOR EACH ROW 
 WHEN (OLD.slug IS DISTINCT FROM NEW.slug) 
 EXECUTE PROCEDURE "dashboard_private".actions_slg_slug ( );
COMMIT;
