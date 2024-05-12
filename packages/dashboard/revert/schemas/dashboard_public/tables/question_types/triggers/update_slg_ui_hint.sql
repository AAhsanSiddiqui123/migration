-- Revert: schemas/dashboard_public/tables/question_types/triggers/update_slg_ui_hint from pg

BEGIN;
DROP TRIGGER update_slg_ui_hint ON "dashboard_public".question_types;
COMMIT;  

