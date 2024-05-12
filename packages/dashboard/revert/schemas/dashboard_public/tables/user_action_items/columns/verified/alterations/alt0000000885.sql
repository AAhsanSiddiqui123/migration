-- Revert: schemas/dashboard_public/tables/user_action_items/columns/verified/alterations/alt0000000885 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items 
    ALTER COLUMN verified DROP DEFAULT;

COMMIT;  

