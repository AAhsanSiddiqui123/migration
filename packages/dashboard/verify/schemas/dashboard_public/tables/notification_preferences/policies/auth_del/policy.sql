-- Verify: schemas/dashboard_public/tables/notification_preferences/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.notification_preferences');
COMMIT;  

