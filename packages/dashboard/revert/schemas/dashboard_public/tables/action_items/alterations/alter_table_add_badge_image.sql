-- Revert schemas/dashboard_public/tables/action_items/alterations/alter_table_add_badge_image from pg

BEGIN;

ALTER TABLE dashboard_public.action_items
    DROP COLUMN badge_image;

COMMIT;
