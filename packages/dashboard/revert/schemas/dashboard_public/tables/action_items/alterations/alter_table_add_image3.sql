-- Revert schemas/dashboard_public/tables/action_items/alterations/alter_table_add_image3 from pg

BEGIN;

ALTER TABLE dashboard_public.action_items
    DROP COLUMN image3;

COMMIT;
