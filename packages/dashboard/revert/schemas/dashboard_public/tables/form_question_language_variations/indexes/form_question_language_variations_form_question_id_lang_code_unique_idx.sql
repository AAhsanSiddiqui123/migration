-- Revert dashboard:schemas/dashboard_public/tables/form_question_language_variations/indexes/form_question_language_variations_form_question_id_lang_code_unique_idx from pg

BEGIN;

ALTER TABLE dashboard_public.form_question_language_variations 
    DROP CONSTRAINT fqlv_form_question_id_lang_code_unique_idx;
    
COMMIT;
