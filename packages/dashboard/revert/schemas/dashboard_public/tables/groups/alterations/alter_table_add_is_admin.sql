-- Revert schemas/dashboard_public/tables/groups/alterations/alter_table_add_is_admin from pg

BEGIN;

ALTER TABLE dashboard_public.groups
    DROP COLUMN is_admin;

COMMIT;
