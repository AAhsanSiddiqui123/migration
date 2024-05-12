-- Revert: schemas/dashboard_public/tables/question_types/columns/id/alterations/alt0000001296 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_types 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

