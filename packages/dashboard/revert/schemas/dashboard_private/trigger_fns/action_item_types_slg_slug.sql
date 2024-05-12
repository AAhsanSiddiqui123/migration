-- Revert: schemas/dashboard_private/trigger_fns/action_item_types_slg_slug from pg

BEGIN;
DROP FUNCTION "dashboard_private".action_item_types_slg_slug;
COMMIT;  

