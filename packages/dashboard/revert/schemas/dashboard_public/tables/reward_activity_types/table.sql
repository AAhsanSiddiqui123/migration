-- Revert schemas/dashboard_public/tables/reward_activity_types/table from pg

BEGIN;

DROP TABLE dashboard_public.reward_activity_types;

COMMIT;
