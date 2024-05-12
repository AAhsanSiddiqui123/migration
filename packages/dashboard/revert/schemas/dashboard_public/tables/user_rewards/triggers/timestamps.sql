-- Revert schemas/dashboard_public/tables/user_rewards/triggers/timestamps from pg

BEGIN;

ALTER TABLE dashboard_public.user_rewards DROP COLUMN created_at;
ALTER TABLE dashboard_public.user_rewards DROP COLUMN updated_at;
DROP TRIGGER update_dashboard_public_user_rewards_modtime ON dashboard_public.user_rewards;

COMMIT;
