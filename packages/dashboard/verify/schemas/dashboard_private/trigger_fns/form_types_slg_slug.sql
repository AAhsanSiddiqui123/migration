-- Verify: schemas/dashboard_private/trigger_fns/form_types_slg_slug on pg

BEGIN;
SELECT verify_function('dashboard_private.form_types_slg_slug');
COMMIT;  

