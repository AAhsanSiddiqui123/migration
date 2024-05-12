-- Revert schemas/dashboard_public/tables/track_actions/alterations/alter_table_add_featured_order from pg

BEGIN;

ALTER TABLE dashboard_public.track_actions
    DROP COLUMN featured_order;

COMMIT;
