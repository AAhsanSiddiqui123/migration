-- Deploy schemas/dashboard_public/tables/impact_language_variations/alterations/alter_table_add_header to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impact_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.impact_language_variations
    ADD COLUMN header text NULL;

COMMIT;
