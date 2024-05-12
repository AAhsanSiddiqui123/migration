-- Verify: schemas/dashboard_private/trigger_fns/impacts_conditions_denorm_impact_id on pg

BEGIN;
SELECT verify_function('dashboard_private.impacts_conditions_denorm_impact_id');
COMMIT;  

