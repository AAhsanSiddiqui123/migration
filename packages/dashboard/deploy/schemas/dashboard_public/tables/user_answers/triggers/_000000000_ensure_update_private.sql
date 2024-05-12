-- Deploy: schemas/dashboard_public/tables/user_answers/triggers/_000000000_ensure_update_private to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/user_answers/table
-- requires: schemas/dashboard_private/trigger_fns/user_answers_denorm_private

BEGIN;
CREATE TRIGGER _000000000_ensure_update_private 
 BEFORE UPDATE ON "dashboard_public".user_answers 
 FOR EACH ROW 
 WHEN (OLD.question_id IS DISTINCT FROM NEW.question_id OR OLD.is_private IS DISTINCT FROM NEW.is_private) 
 EXECUTE PROCEDURE "dashboard_private".user_answers_denorm_private ( );
COMMIT;
