-- Deploy schemas/dashboard_public/tables/actions/alterations/alter_table_add_reward_amount_text to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;

ALTER TABLE dashboard_public.actions
    ADD COLUMN reward_amount_text text NULL;

COMMIT;
