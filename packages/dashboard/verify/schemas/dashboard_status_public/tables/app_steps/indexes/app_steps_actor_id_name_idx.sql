-- Verify: schemas/dashboard_status_public/tables/app_steps/indexes/app_steps_actor_id_name_idx on pg

BEGIN;
SELECT verify_index('dashboard_status_public.app_steps', 'app_steps_actor_id_name_idx');
COMMIT;  

