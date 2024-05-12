-- Revert: schemas/dashboard_public/tables/user_questions/columns/is_private/alterations/alt0000001378 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions 
    ALTER COLUMN is_private DROP DEFAULT;

COMMIT;  

