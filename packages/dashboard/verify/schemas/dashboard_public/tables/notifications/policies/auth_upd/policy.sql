-- Verify: schemas/dashboard_public/tables/notifications/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.notifications');
COMMIT;  

