-- Revert schemas/dashboard_public/tables/data_tag_language_variations/indexes/data_tag_language_variations_data_tag_id_idx from pg

BEGIN;

DROP INDEX dashboard_public.data_tag_language_variations_data_tag_id_idx;

COMMIT;
