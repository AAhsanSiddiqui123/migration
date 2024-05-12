-- Deploy schemas/dashboard_public/tables/user_dismissed_track_actions/policies/enable_row_level_security to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_dismissed_track_actions/table

BEGIN;

ALTER TABLE dashboard_public.user_dismissed_track_actions
    ENABLE ROW LEVEL SECURITY;

COMMIT;
