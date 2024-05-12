-- Revert: schemas/dashboard_public/tables/form_questions/columns/id/alterations/alt0000001348 from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

