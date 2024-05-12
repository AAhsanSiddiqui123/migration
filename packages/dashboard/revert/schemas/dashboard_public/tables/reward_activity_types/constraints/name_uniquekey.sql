-- Revert dashboard:schemas/dashboard_public/tables/reward_activity_types/constraints/name_uniquekey from pg

BEGIN;


ALTER TABLE dashboard_public.reward_activity_types
    DROP CONSTRAINT reward_activity_types_name_key;
COMMIT;
