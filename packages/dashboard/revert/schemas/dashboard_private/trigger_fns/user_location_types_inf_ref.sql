-- Revert: schemas/dashboard_private/trigger_fns/user_location_types_inf_ref from pg

BEGIN;
DROP FUNCTION "dashboard_private".user_location_types_inf_ref;
COMMIT;  

