-- Verify: schemas/dashboard_private/trigger_fns/question_types_slg_slug on pg

BEGIN;
SELECT verify_function('dashboard_private.question_types_slg_slug');
COMMIT;  

