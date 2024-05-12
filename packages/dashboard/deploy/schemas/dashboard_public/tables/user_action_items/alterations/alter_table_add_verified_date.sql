-- Deploy schemas/dashboard_public/tables/user_action_items/alterations/alter_table_add_verified_date to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table

BEGIN;

ALTER TABLE dashboard_public.user_action_items
    ADD COLUMN verified_date timestamptz NULL;

COMMIT;
