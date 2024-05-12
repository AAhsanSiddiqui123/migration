-- Revert: schemas/dashboard_public/tables/action_questions/columns/is_before/alterations/alt0000001215 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_questions 
    ALTER COLUMN is_before DROP DEFAULT;

COMMIT;  

