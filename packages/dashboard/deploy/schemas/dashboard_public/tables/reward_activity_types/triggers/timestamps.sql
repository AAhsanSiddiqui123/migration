-- Deploy schemas/dashboard_public/tables/reward_activity_types/triggers/timestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_activity_types/table

BEGIN;

ALTER TABLE dashboard_public.reward_activity_types ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.reward_activity_types ALTER COLUMN created_at SET DEFAULT NOW();

ALTER TABLE dashboard_public.reward_activity_types ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.reward_activity_types ALTER COLUMN updated_at SET DEFAULT NOW();

CREATE TRIGGER update_dashboard_public_reward_activity_types_modtime
BEFORE UPDATE OR INSERT ON dashboard_public.reward_activity_types
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();

COMMIT;
