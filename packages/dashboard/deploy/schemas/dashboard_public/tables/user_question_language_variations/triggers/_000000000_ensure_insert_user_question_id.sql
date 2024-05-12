-- Deploy: schemas/dashboard_public/tables/user_question_language_variations/triggers/_000000000_ensure_insert_user_question_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/user_question_language_variations/table
-- requires: schemas/dashboard_private/trigger_fns/user_question_language_variations_denorm_user_question_id

BEGIN;
CREATE TRIGGER _000000000_ensure_insert_user_question_id 
 BEFORE INSERT ON "dashboard_public".user_question_language_variations 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".user_question_language_variations_denorm_user_question_id ( );
COMMIT;
