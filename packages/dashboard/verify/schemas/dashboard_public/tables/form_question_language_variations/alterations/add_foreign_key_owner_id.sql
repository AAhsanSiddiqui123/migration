-- Verify schemas/dashboard_public/tables/form_question_language_variations/alterations/add_foreign_key_owner_id  on pg

BEGIN;

SELECT verify_constraint('dashboard_public.form_question_language_variations', 'fk_dashboard_public_form_question_language_variations_owner_id');

ROLLBACK;
