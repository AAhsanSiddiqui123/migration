-- Revert: schemas/dashboard_public/tables/question_types/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_types DROP COLUMN description;
COMMIT;  

