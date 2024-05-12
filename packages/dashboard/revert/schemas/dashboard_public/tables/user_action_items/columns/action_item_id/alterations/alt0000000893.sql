-- Revert: schemas/dashboard_public/tables/user_action_items/columns/action_item_id/alterations/alt0000000893 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items 
    ALTER COLUMN action_item_id DROP NOT NULL;


COMMIT;  

