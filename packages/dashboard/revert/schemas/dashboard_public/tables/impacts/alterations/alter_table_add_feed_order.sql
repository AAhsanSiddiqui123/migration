-- Revert schemas/dashboard_public/tables/impacts/alterations/alter_table_add_feed_order from pg

BEGIN;

ALTER TABLE dashboard_public.impacts
    DROP COLUMN feed_order;

COMMIT;
