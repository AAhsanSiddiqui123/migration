-- Revert: schemas/dashboard_public/tables/form_questions/columns/page_num/alterations/alt0000001695 from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions 
    ALTER COLUMN page_num DROP DEFAULT;

COMMIT;  

