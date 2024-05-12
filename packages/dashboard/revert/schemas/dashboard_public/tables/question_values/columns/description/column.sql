-- Revert: schemas/dashboard_public/tables/question_values/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values DROP COLUMN description;
COMMIT;  

