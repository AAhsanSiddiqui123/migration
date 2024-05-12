-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/columns/action_id/alterations/alt0000000913 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_item_verifications 
    ALTER COLUMN action_id DROP NOT NULL;


COMMIT;  

