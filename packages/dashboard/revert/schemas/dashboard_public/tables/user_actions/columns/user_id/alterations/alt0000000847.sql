-- Revert: schemas/dashboard_public/tables/user_actions/columns/user_id/alterations/alt0000000847 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions 
    ALTER COLUMN user_id DROP DEFAULT;

COMMIT;  

