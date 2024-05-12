-- Verify: schemas/dashboard_private/trigger_fns/user_answers_denorm_private on pg

BEGIN;
SELECT verify_function('dashboard_private.user_answers_denorm_private');
COMMIT;  

