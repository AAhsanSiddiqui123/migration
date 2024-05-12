-- Deploy schemas/dashboard_public/tables/user_rewards/triggers/timestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_rewards/table

BEGIN;

ALTER TABLE dashboard_public.user_rewards ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.user_rewards ALTER COLUMN created_at SET DEFAULT NOW();

ALTER TABLE dashboard_public.user_rewards ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.user_rewards ALTER COLUMN updated_at SET DEFAULT NOW();

CREATE TRIGGER update_dashboard_public_user_rewards_modtime
BEFORE UPDATE OR INSERT ON dashboard_public.user_rewards
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();

COMMIT;
