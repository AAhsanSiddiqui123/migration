-- Deploy: schemas/dashboard_public/tables/onboarding_questions/triggers/_000000000_ensure_insert_question_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/onboarding_questions/table
-- requires: schemas/dashboard_private/trigger_fns/onboarding_questions_denorm_question_id

BEGIN;
CREATE TRIGGER _000000000_ensure_insert_question_id 
 BEFORE INSERT ON "dashboard_public".onboarding_questions 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".onboarding_questions_denorm_question_id ( );
COMMIT;
