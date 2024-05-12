-- Deploy schemas/dashboard_public/tables/groups/alterations/alter_table_add_is_admin to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/groups/table

BEGIN;

ALTER TABLE dashboard_public.groups
    ADD COLUMN is_admin boolean DEFAULT false;

COMMIT;
