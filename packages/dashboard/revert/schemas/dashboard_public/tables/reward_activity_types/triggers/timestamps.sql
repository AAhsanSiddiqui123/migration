-- Revert schemas/dashboard_public/tables/reward_activity_types/triggers/timestamps from pg

BEGIN;

ALTER TABLE dashboard_public.reward_activity_types DROP COLUMN created_at;
ALTER TABLE dashboard_public.reward_activity_types DROP COLUMN updated_at;
DROP TRIGGER update_dashboard_public_reward_activity_types_modtime ON dashboard_public.reward_activity_types;

COMMIT;
