-- Revert: schemas/dashboard_private/trigger_fns/impact_language_variations_denorm_impact_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".impact_language_variations_denorm_impact_id;
COMMIT;  

