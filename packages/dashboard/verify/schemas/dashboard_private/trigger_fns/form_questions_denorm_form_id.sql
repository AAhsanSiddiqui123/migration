-- Verify: schemas/dashboard_private/trigger_fns/form_questions_denorm_form_id on pg

BEGIN;
SELECT verify_function('dashboard_private.form_questions_denorm_form_id');
COMMIT;  

