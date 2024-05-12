-- Deploy schemas/dashboard_public/tables/user_dismissed_track_actions/table to pg

-- requires: schemas/dashboard_public/schema

BEGIN;

CREATE TABLE dashboard_public.user_dismissed_track_actions (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 ()
  -- fields
);

COMMENT ON TABLE dashboard_public.user_dismissed_track_actions IS 'Table to save the dismissed track action by the user.';

COMMENT ON COLUMN dashboard_public.user_dismissed_track_actions.id IS 'The primary unique identifier for the user_dismissed_track_actions table.';

COMMIT;
