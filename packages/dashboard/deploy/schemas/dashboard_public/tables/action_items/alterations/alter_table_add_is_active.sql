-- Deploy schemas/dashboard_public/tables/action_items/alterations/alter_table_add_is_active to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table

BEGIN;

ALTER TABLE dashboard_public.action_items
    ADD COLUMN is_active boolean DEFAULT true;

COMMIT;
