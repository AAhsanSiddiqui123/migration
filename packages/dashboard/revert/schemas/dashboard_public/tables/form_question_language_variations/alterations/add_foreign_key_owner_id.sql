-- Revert schemas/dashboard_public/tables/form_question_language_variations/alterations/add_foreign_key_owner_id from pg

BEGIN;

ALTER TABLE dashboard_public.form_question_language_variations
    DROP CONSTRAINT fk_dashboard_public_form_question_language_variations_owner_id;

COMMIT;
