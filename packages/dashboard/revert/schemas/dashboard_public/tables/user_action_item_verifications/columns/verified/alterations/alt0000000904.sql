-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/columns/verified/alterations/alt0000000904 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_item_verifications 
    ALTER COLUMN verified DROP NOT NULL;


COMMIT;  

