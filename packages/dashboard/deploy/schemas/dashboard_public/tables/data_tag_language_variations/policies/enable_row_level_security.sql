-- Deploy schemas/dashboard_public/tables/data_tag_language_variations/policies/enable_row_level_security to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/data_tag_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.data_tag_language_variations
    ENABLE ROW LEVEL SECURITY;

COMMIT;
