-- Revert: schemas/dashboard_public/tables/question_templates/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates DROP COLUMN id;
COMMIT;  

