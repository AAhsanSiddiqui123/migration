-- Deploy: schemas/dashboard_public/tables/form_questions/triggers/_000000000_ensure_update_form_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/form_questions/table
-- requires: schemas/dashboard_private/trigger_fns/form_questions_denorm_form_id

BEGIN;
CREATE TRIGGER _000000000_ensure_update_form_id 
 BEFORE UPDATE ON "dashboard_public".form_questions 
 FOR EACH ROW 
 WHEN (OLD.form_id IS DISTINCT FROM NEW.form_id OR OLD.owner_id IS DISTINCT FROM NEW.owner_id) 
 EXECUTE PROCEDURE "dashboard_private".form_questions_denorm_form_id ( );
COMMIT;
