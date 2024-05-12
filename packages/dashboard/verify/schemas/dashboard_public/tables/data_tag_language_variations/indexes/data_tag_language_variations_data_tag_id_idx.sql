-- Verify schemas/dashboard_public/tables/data_tag_language_variations/indexes/data_tag_language_variations_data_tag_id_idx  on pg

BEGIN;

SELECT verify_index ('dashboard_public.data_tag_language_variations', 'data_tag_language_variations_data_tag_id_idx');

ROLLBACK;
