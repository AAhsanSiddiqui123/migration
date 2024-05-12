-- Revert: schemas/dashboard_private/trigger_fns/user_answers_denorm_private from pg

BEGIN;
DROP FUNCTION "dashboard_private".user_answers_denorm_private;
COMMIT;  

