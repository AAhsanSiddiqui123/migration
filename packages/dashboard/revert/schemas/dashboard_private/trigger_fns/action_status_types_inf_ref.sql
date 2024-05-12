-- Revert: schemas/dashboard_private/trigger_fns/action_status_types_inf_ref from pg

BEGIN;
DROP FUNCTION "dashboard_private".action_status_types_inf_ref;
COMMIT;  

