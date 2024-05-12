-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/constraints/user_action_item_verifications_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_item_verifications 
    DROP CONSTRAINT user_action_item_verifications_pkey;

COMMIT;  

