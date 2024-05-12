-- Revert: schemas/dashboard_public/tables/user_action_items/columns/action_id/alterations/alt0000000898 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items 
    ALTER COLUMN action_id DROP DEFAULT;

COMMIT;  

