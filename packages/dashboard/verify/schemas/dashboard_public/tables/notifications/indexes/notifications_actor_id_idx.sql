-- Verify: schemas/dashboard_public/tables/notifications/indexes/notifications_actor_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.notifications', 'notifications_actor_id_idx');
COMMIT;  

