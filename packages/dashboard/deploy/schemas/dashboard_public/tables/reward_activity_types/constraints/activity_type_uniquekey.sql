-- Deploy dashboard:schemas/dashboard_public/tables/reward_activity_types/constraints/activity_type_uniquekey to pg

BEGIN;

ALTER TABLE dashboard_public.reward_activity_types
ADD CONSTRAINT reward_activity_types_activity_type_key UNIQUE (activity_type);

COMMIT;
