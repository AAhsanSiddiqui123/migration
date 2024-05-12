-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/constraints/user_action_item_verifications_verifier_id_fkey/alterations/alt0000000908 from pg

BEGIN;
COMMENT ON CONSTRAINT user_action_item_verifications_verifier_id_fkey ON "dashboard_public".user_action_item_verifications IS NULL;
COMMIT;  

