-- Revert: schemas/dashboard_private/trigger_fns/form_questions_denorm_form_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".form_questions_denorm_form_id;
COMMIT;  

