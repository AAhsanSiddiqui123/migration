-- Revert: schemas/dashboard_public/tables/user_actions/columns/complete/alterations/alt0000000849 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions 
    ALTER COLUMN complete DROP DEFAULT;

COMMIT;  

