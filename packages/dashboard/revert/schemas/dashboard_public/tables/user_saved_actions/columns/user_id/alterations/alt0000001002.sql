-- Revert: schemas/dashboard_public/tables/user_saved_actions/columns/user_id/alterations/alt0000001002 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_saved_actions 
    ALTER COLUMN user_id DROP DEFAULT;

COMMIT;  

