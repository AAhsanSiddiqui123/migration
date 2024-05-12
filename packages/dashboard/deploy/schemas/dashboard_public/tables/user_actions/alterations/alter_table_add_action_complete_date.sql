-- Deploy schemas/dashboard_public/tables/user_actions/alterations/alter_table_add_action_date to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table

BEGIN;

ALTER TABLE dashboard_public.user_actions
    ADD COLUMN action_complete_date text NULL;

COMMIT;
