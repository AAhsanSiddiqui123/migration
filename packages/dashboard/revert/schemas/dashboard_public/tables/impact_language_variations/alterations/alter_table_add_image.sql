-- Revert schemas/dashboard_public/tables/impact_language_variations/alterations/alter_table_add_image from pg

BEGIN;

ALTER TABLE dashboard_public.impact_language_variations
    DROP COLUMN image;

COMMIT;
