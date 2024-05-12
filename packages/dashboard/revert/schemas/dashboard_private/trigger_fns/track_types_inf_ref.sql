-- Revert: schemas/dashboard_private/trigger_fns/track_types_inf_ref from pg

BEGIN;
DROP FUNCTION "dashboard_private".track_types_inf_ref;
COMMIT;  

