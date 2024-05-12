-- Verify: schemas/dashboard_private/trigger_fns/user_forms_denorm_form_id on pg

BEGIN;
SELECT verify_function('dashboard_private.user_forms_denorm_form_id');
COMMIT;  

