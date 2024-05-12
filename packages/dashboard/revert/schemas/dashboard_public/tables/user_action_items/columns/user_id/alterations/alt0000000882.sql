-- Revert: schemas/dashboard_public/tables/user_action_items/columns/user_id/alterations/alt0000000882 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items 
    ALTER COLUMN user_id DROP NOT NULL;


COMMIT;  

