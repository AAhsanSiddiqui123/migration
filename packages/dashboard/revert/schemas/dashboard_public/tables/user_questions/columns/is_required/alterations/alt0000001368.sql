-- Revert: schemas/dashboard_public/tables/user_questions/columns/is_required/alterations/alt0000001368 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions 
    ALTER COLUMN is_required DROP DEFAULT;

COMMIT;  

