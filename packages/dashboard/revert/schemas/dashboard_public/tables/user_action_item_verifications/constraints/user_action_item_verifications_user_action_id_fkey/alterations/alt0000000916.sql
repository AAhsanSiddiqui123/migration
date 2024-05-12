-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/constraints/user_action_item_verifications_user_action_id_fkey/alterations/alt0000000916 from pg

BEGIN;
COMMENT ON CONSTRAINT user_action_item_verifications_user_action_id_fkey ON "dashboard_public".user_action_item_verifications IS NULL;
COMMIT;  

