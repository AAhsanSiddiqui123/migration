-- Revert schemas/dashboard_public/tables/data_tag_language_variations/table from pg

BEGIN;

DROP TABLE dashboard_public.data_tag_language_variations;

COMMIT;
