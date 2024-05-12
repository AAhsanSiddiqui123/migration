-- Revert schemas/dashboard_public/tables/user_rewards/triggers/peoplestamps from pg

BEGIN;

ALTER TABLE dashboard_public.user_rewards DROP COLUMN created_by;
ALTER TABLE dashboard_public.user_rewards DROP COLUMN updated_by;
DROP TRIGGER update_dashboard_public_user_rewards_moduser ON dashboard_public.user_rewards;

COMMIT;
