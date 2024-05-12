-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/columns/rejected/alterations/alt0000000906 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_item_verifications 
    ALTER COLUMN rejected DROP NOT NULL;


COMMIT;  

