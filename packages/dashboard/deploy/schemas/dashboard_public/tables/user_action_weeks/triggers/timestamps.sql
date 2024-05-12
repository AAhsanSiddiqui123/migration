-- Deploy schemas/dashboard_public/tables/user_action_weeks/triggers/timestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_weeks/table

BEGIN;

ALTER TABLE dashboard_public.user_action_weeks ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.user_action_weeks ALTER COLUMN created_at SET DEFAULT NOW();

ALTER TABLE dashboard_public.user_action_weeks ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.user_action_weeks ALTER COLUMN updated_at SET DEFAULT NOW();

CREATE TRIGGER update_dashboard_public_user_action_weeks_modtime
BEFORE UPDATE OR INSERT ON dashboard_public.user_action_weeks
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();

COMMIT;
