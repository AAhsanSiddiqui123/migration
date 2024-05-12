-- Revert: schemas/dashboard_public/tables/question_templates/table from pg

BEGIN;
DROP TABLE "dashboard_public".question_templates;
COMMIT;  

