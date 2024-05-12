-- Verify schemas/dashboard_public/tables/tracks/triggers/insert_update_is_bounds  on pg

BEGIN;

SELECT verify_function ('dashboard_private.tg_insert_update_is_bounds'); 
SELECT verify_trigger ('dashboard_public.insert_update_is_bounds');

ROLLBACK;
