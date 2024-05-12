-- Revert: schemas/dashboard_public/tables/question_values/columns/id/alterations/alt0000001317 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

