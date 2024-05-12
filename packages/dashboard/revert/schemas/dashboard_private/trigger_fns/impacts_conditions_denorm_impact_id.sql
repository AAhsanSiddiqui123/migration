-- Revert: schemas/dashboard_private/trigger_fns/impacts_conditions_denorm_impact_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".impacts_conditions_denorm_impact_id;
COMMIT;  

