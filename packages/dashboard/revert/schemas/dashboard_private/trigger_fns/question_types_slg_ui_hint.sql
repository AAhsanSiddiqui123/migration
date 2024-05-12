-- Revert: schemas/dashboard_private/trigger_fns/question_types_slg_ui_hint from pg

BEGIN;
DROP FUNCTION "dashboard_private".question_types_slg_ui_hint;
COMMIT;  

