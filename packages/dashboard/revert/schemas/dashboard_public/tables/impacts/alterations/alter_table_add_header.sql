-- Revert schemas/dashboard_public/tables/impacts/alterations/alter_table_add_header from pg

BEGIN;

ALTER TABLE dashboard_public.impacts
    DROP COLUMN header;

COMMIT;
