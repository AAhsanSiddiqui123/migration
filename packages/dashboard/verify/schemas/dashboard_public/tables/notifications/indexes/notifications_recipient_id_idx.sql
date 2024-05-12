-- Verify: schemas/dashboard_public/tables/notifications/indexes/notifications_recipient_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.notifications', 'notifications_recipient_id_idx');
COMMIT;  

