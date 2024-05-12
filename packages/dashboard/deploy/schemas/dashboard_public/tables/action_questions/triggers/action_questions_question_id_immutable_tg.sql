-- Deploy: schemas/dashboard_public/tables/action_questions/triggers/action_questions_question_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_questions/table

BEGIN;
CREATE TRIGGER action_questions_question_id_immutable_tg 
 BEFORE UPDATE ON "dashboard_public".action_questions 
 FOR EACH ROW 
 WHEN (OLD.question_id IS DISTINCT FROM NEW.question_id AND old.question_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'question_id' );
COMMIT;
