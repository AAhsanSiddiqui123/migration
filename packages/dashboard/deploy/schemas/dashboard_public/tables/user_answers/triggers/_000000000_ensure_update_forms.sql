-- Deploy: schemas/dashboard_public/tables/user_answers/triggers/_000000000_ensure_update_forms to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_private/schema
-- requires: schemas/dashboard_public/tables/user_answers/table
-- requires: schemas/dashboard_private/trigger_fns/user_answers_denorm_forms

BEGIN;
CREATE TRIGGER _000000000_ensure_update_forms 
 BEFORE UPDATE ON "dashboard_public".user_answers 
 FOR EACH ROW 
 WHEN (OLD.user_form_id IS DISTINCT FROM NEW.user_form_id OR OLD.form_id IS DISTINCT FROM NEW.form_id) 
 EXECUTE PROCEDURE "dashboard_private".user_answers_denorm_forms ( );
COMMIT;
