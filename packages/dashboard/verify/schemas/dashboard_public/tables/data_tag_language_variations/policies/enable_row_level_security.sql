-- Verify schemas/dashboard_public/tables/data_tag_language_variations/policies/enable_row_level_security  on pg

BEGIN;

SELECT verify_security ('dashboard_public.data_tag_language_variations');

ROLLBACK;
