-- Revert schemas/dashboard_public/tables/form_question_language_variations/alterations/alter_table_add_owner_id from pg

BEGIN;

ALTER TABLE dashboard_public.form_question_language_variations
    DROP COLUMN owner_id;

COMMIT;
