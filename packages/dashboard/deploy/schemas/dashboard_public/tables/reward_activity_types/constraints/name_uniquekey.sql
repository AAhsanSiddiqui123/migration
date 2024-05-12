-- Deploy dashboard:schemas/dashboard_public/tables/reward_activity_types/constraints/name_uniquekey to pg

BEGIN;

ALTER TABLE dashboard_public.reward_activity_types
ADD CONSTRAINT reward_activity_types_name_key UNIQUE (name);

COMMIT;
