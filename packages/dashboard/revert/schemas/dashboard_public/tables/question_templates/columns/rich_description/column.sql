-- Revert: schemas/dashboard_public/tables/question_templates/columns/rich_description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates DROP COLUMN rich_description;
COMMIT;  

