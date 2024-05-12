-- Deploy: schemas/dashboard_public/tables/user_action_verifications/triggers/_000000000_ensure_insert_user_action_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/user_action_verifications/table
-- requires: schemas/dashboard_private/trigger_fns/user_action_verifications_denorm_user_action_id

BEGIN;
CREATE TRIGGER _000000000_ensure_insert_user_action_id 
 BEFORE INSERT ON "dashboard_public".user_action_verifications 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".user_action_verifications_denorm_user_action_id ( );
COMMIT;
