-- Revert: schemas/dashboard_public/tables/question_types/columns/ui_hint/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_types DROP COLUMN ui_hint;
COMMIT;  

