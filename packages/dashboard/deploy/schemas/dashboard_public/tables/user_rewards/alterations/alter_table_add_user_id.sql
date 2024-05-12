-- Deploy schemas/dashboard_public/tables/user_rewards/alterations/alter_table_add_user_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_rewards/table

BEGIN;

ALTER TABLE dashboard_public.user_rewards
    ADD COLUMN user_id uuid NOT NULL;

COMMIT;
