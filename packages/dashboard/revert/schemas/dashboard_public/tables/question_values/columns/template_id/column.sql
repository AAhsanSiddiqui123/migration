-- Revert: schemas/dashboard_public/tables/question_values/columns/template_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values DROP COLUMN template_id;
COMMIT;  

