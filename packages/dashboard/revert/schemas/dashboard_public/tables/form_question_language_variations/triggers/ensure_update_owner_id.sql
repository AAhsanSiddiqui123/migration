-- Revert schemas/dashboard_public/tables/form_question_language_variations/triggers/ensure_update_owner_id from pg

BEGIN;

DROP TRIGGER ensure_update_owner_id ON dashboard_public.form_question_language_variations;
DROP FUNCTION dashboard_private.tg_ensure_update_owner_id; 

COMMIT;
