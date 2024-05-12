-- Deploy schemas/dashboard_public/tables/user_action_weeks/alterations/add_foreign_key_action_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_weeks/table
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;


ALTER TABLE dashboard_public.user_action_weeks
    ADD CONSTRAINT fk_dashboard_public_user_action_weeks_action_id
    FOREIGN KEY (action_id)
    REFERENCES dashboard_public.actions (id)
    ON DELETE CASCADE;


COMMIT;
