-- Deploy schemas/dashboard_public/tables/user_dismissed_track_actions/triggers/timestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_dismissed_track_actions/table

BEGIN;

ALTER TABLE dashboard_public.user_dismissed_track_actions ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.user_dismissed_track_actions ALTER COLUMN created_at SET DEFAULT NOW();

ALTER TABLE dashboard_public.user_dismissed_track_actions ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.user_dismissed_track_actions ALTER COLUMN updated_at SET DEFAULT NOW();

CREATE TRIGGER update_dashboard_public_user_dismissed_track_actions_modtime
BEFORE UPDATE OR INSERT ON dashboard_public.user_dismissed_track_actions
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();

COMMIT;
