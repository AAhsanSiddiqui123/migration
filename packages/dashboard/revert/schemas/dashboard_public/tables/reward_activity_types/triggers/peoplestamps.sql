-- Revert schemas/dashboard_public/tables/reward_activity_types/triggers/peoplestamps from pg

BEGIN;

ALTER TABLE dashboard_public.reward_activity_types DROP COLUMN created_by;
ALTER TABLE dashboard_public.reward_activity_types DROP COLUMN updated_by;
DROP TRIGGER update_dashboard_public_reward_activity_types_moduser ON dashboard_public.reward_activity_types;

COMMIT;
