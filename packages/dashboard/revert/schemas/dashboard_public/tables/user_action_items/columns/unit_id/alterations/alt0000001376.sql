-- Revert: schemas/dashboard_public/tables/user_action_items/columns/unit_id/alterations/alt0000001376 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items 
    ALTER COLUMN unit_id DROP DEFAULT;

COMMIT;  

