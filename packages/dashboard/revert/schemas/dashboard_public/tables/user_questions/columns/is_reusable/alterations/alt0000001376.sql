-- Revert: schemas/dashboard_public/tables/user_questions/columns/is_reusable/alterations/alt0000001376 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions 
    ALTER COLUMN is_reusable DROP DEFAULT;

COMMIT;  

