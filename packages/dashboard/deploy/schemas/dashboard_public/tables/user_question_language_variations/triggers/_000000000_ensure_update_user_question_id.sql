-- Deploy: schemas/dashboard_public/tables/user_question_language_variations/triggers/_000000000_ensure_update_user_question_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/user_question_language_variations/table
-- requires: schemas/dashboard_private/trigger_fns/user_question_language_variations_denorm_user_question_id

BEGIN;
CREATE TRIGGER _000000000_ensure_update_user_question_id 
 BEFORE UPDATE ON "dashboard_public".user_question_language_variations 
 FOR EACH ROW 
 WHEN (OLD.user_question_id IS DISTINCT FROM NEW.user_question_id OR OLD.owner_id IS DISTINCT FROM NEW.owner_id) 
 EXECUTE PROCEDURE "dashboard_private".user_question_language_variations_denorm_user_question_id ( );
COMMIT;
