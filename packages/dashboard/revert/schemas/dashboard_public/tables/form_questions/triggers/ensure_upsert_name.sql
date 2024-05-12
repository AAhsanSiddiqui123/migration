-- Revert schemas/dashboard_public/tables/form_questions/triggers/ensure_upsert_name from pg

BEGIN;

DROP TRIGGER ensure_upsert_name ON dashboard_public.form_questions;
DROP FUNCTION dashboard_private.tg_ensure_upsert_name; 

COMMIT;
