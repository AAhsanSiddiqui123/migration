-- Verify: schemas/dashboard_public/tables/notification_preferences/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.notification_preferences');
COMMIT;  

