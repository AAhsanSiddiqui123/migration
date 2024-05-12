-- Verify schemas/dashboard_public/tables/actions/triggers/ensure_approved_actions  on pg

BEGIN;

SELECT verify_function ('dashboard_private.tg_ensure_approved_actions'); 
SELECT verify_trigger ('dashboard_public.ensure_approved_actions');

ROLLBACK;
