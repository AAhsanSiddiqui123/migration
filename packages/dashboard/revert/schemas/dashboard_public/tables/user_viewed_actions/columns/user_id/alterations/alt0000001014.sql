-- Revert: schemas/dashboard_public/tables/user_viewed_actions/columns/user_id/alterations/alt0000001014 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_viewed_actions 
    ALTER COLUMN user_id DROP DEFAULT;

COMMIT;  

