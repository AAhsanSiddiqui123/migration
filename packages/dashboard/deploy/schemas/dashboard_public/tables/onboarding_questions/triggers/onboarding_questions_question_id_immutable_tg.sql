-- Deploy: schemas/dashboard_public/tables/onboarding_questions/triggers/onboarding_questions_question_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/onboarding_questions/table

BEGIN;
CREATE TRIGGER onboarding_questions_question_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".onboarding_questions 
 FOR EACH ROW 
 WHEN (OLD.question_id IS DISTINCT FROM NEW.question_id AND old.question_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'question_id' );
COMMIT;
