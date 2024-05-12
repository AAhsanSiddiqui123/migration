-- Revert: schemas/dashboard_private/trigger_fns/user_forms_denorm_form_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".user_forms_denorm_form_id;
COMMIT;  

