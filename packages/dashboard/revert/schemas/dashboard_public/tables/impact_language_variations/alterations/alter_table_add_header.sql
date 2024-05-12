-- Revert schemas/dashboard_public/tables/impact_language_variations/alterations/alter_table_add_header from pg

BEGIN;

ALTER TABLE dashboard_public.impact_language_variations
    DROP COLUMN header;

COMMIT;
