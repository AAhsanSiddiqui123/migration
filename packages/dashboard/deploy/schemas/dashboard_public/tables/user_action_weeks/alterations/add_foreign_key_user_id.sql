-- Deploy schemas/dashboard_public/tables/user_action_weeks/alterations/add_foreign_key_user_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_weeks/table
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;


ALTER TABLE dashboard_public.user_action_weeks
    ADD CONSTRAINT fk_dashboard_public_user_action_weeks_user_id
    FOREIGN KEY (user_id)
    REFERENCES dashboard_public.users (id)
    ON DELETE CASCADE;


COMMIT;
