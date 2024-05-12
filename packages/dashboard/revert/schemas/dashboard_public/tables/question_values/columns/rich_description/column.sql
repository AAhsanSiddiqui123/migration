-- Revert: schemas/dashboard_public/tables/question_values/columns/rich_description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values DROP COLUMN rich_description;
COMMIT;  

