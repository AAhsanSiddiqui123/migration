-- Verify schemas/dashboard_public/tables/user_actions/triggers/verify_on_insert  on pg

BEGIN;

SELECT verify_function ('dashboard_private.tg_verify_on_insert'); 
SELECT verify_trigger ('dashboard_public.verify_on_insert');

ROLLBACK;
