-- Revert dashboard:schemas/dashboard_public/tables/data_tag_language_variations/indexes/data_tag_language_variations_data_tag_id_lang_code_unique_idx from pg

BEGIN;

ALTER TABLE dashboard_public.data_tag_language_variations 
    DROP CONSTRAINT data_tag_language_variations_data_tag_id_lang_code_unique_idx;
    
COMMIT;
