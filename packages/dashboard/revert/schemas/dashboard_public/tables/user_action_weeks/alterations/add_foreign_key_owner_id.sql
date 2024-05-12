-- Revert schemas/dashboard_public/tables/user_action_weeks/alterations/add_foreign_key_owner_id from pg

BEGIN;

ALTER TABLE dashboard_public.user_action_weeks
    DROP CONSTRAINT fk_dashboard_public_user_action_weeks_owner_id;

COMMIT;
