-- Deploy schemas/dashboard_public/tables/reward_activity_types/alterations/alter_table_add_activity_type to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_activity_types/table

BEGIN;

ALTER TABLE dashboard_public.reward_activity_types
    ADD COLUMN activity_type user_activity_type;

COMMIT;
