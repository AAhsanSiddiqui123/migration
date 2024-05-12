-- Deploy: schemas/dashboard_public/tables/impacts_conditions/triggers/_000000000_ensure_update_impact_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/table
-- requires: schemas/dashboard_private/trigger_fns/impacts_conditions_denorm_impact_id

BEGIN;
CREATE TRIGGER _000000000_ensure_update_impact_id 
 BEFORE UPDATE ON "dashboard_public".impacts_conditions 
 FOR EACH ROW 
 WHEN (OLD.impact_id IS DISTINCT FROM NEW.impact_id OR OLD.owner_id IS DISTINCT FROM NEW.owner_id) 
 EXECUTE PROCEDURE "dashboard_private".impacts_conditions_denorm_impact_id ( );
COMMIT;
