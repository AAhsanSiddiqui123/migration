-- Deploy schemas/dashboard_public/tables/user_actions/alterations/alter_table_add_data to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table

BEGIN;

ALTER TABLE dashboard_public.user_actions
    ADD COLUMN data json NULL;

COMMIT;
