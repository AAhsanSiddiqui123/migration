-- Deploy schemas/dashboard_public/tables/user_action_verifications/alterations/add_foreign_key_verifier_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_verifications/table
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;


ALTER TABLE dashboard_public.user_action_verifications
    ADD CONSTRAINT fk_dashboard_public_user_action_verifications_verifier_id
    FOREIGN KEY (verifier_id)
    REFERENCES dashboard_public.users (id)
    ON DELETE CASCADE;


COMMIT;
