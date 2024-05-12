-- Revert: schemas/dashboard_public/tables/action_questions/columns/is_required/alterations/alt0000001212 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_questions 
    ALTER COLUMN is_required DROP DEFAULT;

COMMIT;  

