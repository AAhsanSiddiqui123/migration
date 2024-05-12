-- Deploy: schemas/dashboard_public/tables/action_language_variations/triggers/_000000000_ensure_insert_action_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/action_language_variations/table
-- requires: schemas/dashboard_private/trigger_fns/action_language_variations_denorm_action_id

BEGIN;
CREATE TRIGGER _000000000_ensure_insert_action_id 
 BEFORE INSERT ON "dashboard_public".action_language_variations 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".action_language_variations_denorm_action_id ( );
COMMIT;
