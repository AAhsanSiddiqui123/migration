-- Revert schemas/dashboard_public/tables/data_tag_language_variations/policies/enable_row_level_security from pg

BEGIN;

ALTER TABLE dashboard_public.data_tag_language_variations
    DISABLE ROW LEVEL SECURITY;

COMMIT;
