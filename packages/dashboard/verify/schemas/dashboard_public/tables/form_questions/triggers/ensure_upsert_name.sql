-- Verify schemas/dashboard_public/tables/form_questions/triggers/ensure_upsert_name  on pg

BEGIN;

SELECT verify_function ('dashboard_private.tg_ensure_upsert_name'); 
SELECT verify_trigger ('dashboard_public.ensure_upsert_name');

ROLLBACK;
