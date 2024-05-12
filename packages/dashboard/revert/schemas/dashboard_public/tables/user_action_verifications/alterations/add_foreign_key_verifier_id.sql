-- Revert schemas/dashboard_public/tables/user_action_verifications/alterations/add_foreign_key_verifier_id from pg

BEGIN;

ALTER TABLE dashboard_public.user_action_verifications
    DROP CONSTRAINT fk_dashboard_public_user_action_verifications_verifier_id;

COMMIT;
