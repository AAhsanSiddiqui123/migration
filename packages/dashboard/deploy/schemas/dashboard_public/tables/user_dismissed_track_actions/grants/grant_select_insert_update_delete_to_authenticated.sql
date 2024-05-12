-- Deploy schemas/dashboard_public/tables/user_dismissed_track_actions/grants/grant_select_insert_update_delete_to_authenticated to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_dismissed_track_actions/table

BEGIN;

-- TODO make sure to require any policies on this table!

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dashboard_public.user_dismissed_track_actions TO authenticated;

COMMIT;
