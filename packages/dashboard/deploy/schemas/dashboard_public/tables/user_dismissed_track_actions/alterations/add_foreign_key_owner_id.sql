-- Deploy schemas/dashboard_public/tables/user_dismissed_track_actions/alterations/add_foreign_key_owner_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_dismissed_track_actions/table
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;


ALTER TABLE dashboard_public.user_dismissed_track_actions
    ADD CONSTRAINT fk_dashboard_public_user_dismissed_track_actions_owner_id
    FOREIGN KEY (owner_id)
    REFERENCES dashboard_public.users (id)
    ON DELETE CASCADE;


COMMIT;
