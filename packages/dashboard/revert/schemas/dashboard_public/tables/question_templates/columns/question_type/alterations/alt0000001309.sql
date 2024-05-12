-- Revert: schemas/dashboard_public/tables/question_templates/columns/question_type/alterations/alt0000001309 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates
    ADD COLUMN question_type text;

COMMIT;  

