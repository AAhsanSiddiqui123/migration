-- Revert: schemas/dashboard_public/tables/question_templates/columns/question_type_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates DROP COLUMN question_type_id;
COMMIT;  

