-- Revert: schemas/dashboard_public/tables/user_action_items/columns/complete/alterations/alt0000000884 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items 
    ALTER COLUMN complete DROP DEFAULT;

COMMIT;  

