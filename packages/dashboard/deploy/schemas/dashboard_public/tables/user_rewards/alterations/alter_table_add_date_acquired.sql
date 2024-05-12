-- Deploy schemas/dashboard_public/tables/user_rewards/alterations/alter_table_add_date_acquired to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_rewards/table

BEGIN;

ALTER TABLE dashboard_public.user_rewards
    ADD COLUMN date_acquired timestamp NULL;

COMMIT;
