-- Deploy: schemas/dashboard_public/tables/question_value_language_variations/triggers/_000000000_ensure_update_question_value_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/question_value_language_variations/table
-- requires: schemas/dashboard_private/trigger_fns/question_value_language_variations_denorm_question_value_id

BEGIN;
CREATE TRIGGER _000000000_ensure_update_question_value_id 
 BEFORE UPDATE ON "dashboard_public".question_value_language_variations 
 FOR EACH ROW 
 WHEN (OLD.question_value_id IS DISTINCT FROM NEW.question_value_id OR OLD.owner_id IS DISTINCT FROM NEW.owner_id) 
 EXECUTE PROCEDURE "dashboard_private".question_value_language_variations_denorm_question_value_id ( );
COMMIT;
