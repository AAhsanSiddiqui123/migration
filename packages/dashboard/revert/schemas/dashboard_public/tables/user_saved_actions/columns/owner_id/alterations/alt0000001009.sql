-- Revert: schemas/dashboard_public/tables/user_saved_actions/columns/owner_id/alterations/alt0000001009 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_saved_actions 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

