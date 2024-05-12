-- Verify: schemas/dashboard_private/trigger_fns/question_types_slg_ui_hint on pg

BEGIN;
SELECT verify_function('dashboard_private.question_types_slg_ui_hint');
COMMIT;  

