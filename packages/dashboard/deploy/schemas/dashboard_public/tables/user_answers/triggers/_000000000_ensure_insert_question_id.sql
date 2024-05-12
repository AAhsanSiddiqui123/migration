-- Deploy: schemas/dashboard_public/tables/user_answers/triggers/_000000000_ensure_insert_question_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/user_answers/table
-- requires: schemas/dashboard_private/trigger_fns/user_answers_denorm_question_id

BEGIN;
CREATE TRIGGER _000000000_ensure_insert_question_id 
 BEFORE INSERT ON "dashboard_public".user_answers 
 FOR EACH ROW 
 EXECUTE PROCEDURE "dashboard_private".user_answers_denorm_question_id ( );
COMMIT;
