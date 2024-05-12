-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/constraints/user_action_item_verifications_user_id_fkey/alterations/alt0000000910 from pg

BEGIN;
COMMENT ON CONSTRAINT user_action_item_verifications_user_id_fkey ON "dashboard_public".user_action_item_verifications IS NULL;
COMMIT;  

