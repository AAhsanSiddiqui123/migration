-- Revert: schemas/dashboard_public/tables/user_action_verifications/constraints/user_action_verifications_owner_id_fkey/alterations/alt0000000871 from pg

BEGIN;
COMMENT ON CONSTRAINT user_action_verifications_owner_id_fkey ON "dashboard_public".user_action_verifications IS NULL;
COMMIT;  

