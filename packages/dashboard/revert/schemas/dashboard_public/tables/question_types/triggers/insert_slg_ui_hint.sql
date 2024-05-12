-- Revert: schemas/dashboard_public/tables/question_types/triggers/insert_slg_ui_hint from pg

BEGIN;
DROP TRIGGER insert_slg_ui_hint ON "dashboard_public".question_types;
COMMIT;  

