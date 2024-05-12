-- Verify: schemas/dashboard_private/trigger_fns/impact_language_variations_denorm_impact_id on pg

BEGIN;
SELECT verify_function('dashboard_private.impact_language_variations_denorm_impact_id');
COMMIT;  

