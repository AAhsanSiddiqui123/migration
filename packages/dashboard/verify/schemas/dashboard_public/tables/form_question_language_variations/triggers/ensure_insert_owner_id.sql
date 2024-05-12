-- Verify schemas/dashboard_public/tables/form_question_language_variations/triggers/ensure_insert_owner_id  on pg

BEGIN;

SELECT verify_function ('dashboard_private.tg_ensure_insert_owner_id'); 
SELECT verify_trigger ('dashboard_public.ensure_insert_owner_id');

ROLLBACK;
