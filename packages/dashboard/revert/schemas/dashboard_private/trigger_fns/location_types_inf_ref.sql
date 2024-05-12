-- Revert: schemas/dashboard_private/trigger_fns/location_types_inf_ref from pg

BEGIN;
DROP FUNCTION "dashboard_private".location_types_inf_ref;
COMMIT;  

