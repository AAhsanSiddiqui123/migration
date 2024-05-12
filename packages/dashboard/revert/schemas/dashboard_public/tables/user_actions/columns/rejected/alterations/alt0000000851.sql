-- Revert: schemas/dashboard_public/tables/user_actions/columns/rejected/alterations/alt0000000851 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions 
    ALTER COLUMN rejected DROP DEFAULT;

COMMIT;  

