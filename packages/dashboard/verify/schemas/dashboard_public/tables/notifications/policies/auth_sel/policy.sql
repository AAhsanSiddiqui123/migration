-- Verify: schemas/dashboard_public/tables/notifications/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.notifications');
COMMIT;  

