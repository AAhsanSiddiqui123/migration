-- Deploy schemas/dashboard_public/tables/user_action_items/alterations/alter_table_add_rejected to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table

BEGIN;

ALTER TABLE dashboard_public.user_action_items
    ADD COLUMN rejected boolean DEFAULT false;

COMMIT;
