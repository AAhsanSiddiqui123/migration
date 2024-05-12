-- Revert schemas/dashboard_public/tables/impacts/alterations/alter_table_add_pure_image from pg

BEGIN;

ALTER TABLE dashboard_public.impacts
    DROP COLUMN pure_image;

COMMIT;
