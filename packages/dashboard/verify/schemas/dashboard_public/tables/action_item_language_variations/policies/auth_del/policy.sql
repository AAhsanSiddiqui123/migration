-- Verify: schemas/dashboard_public/tables/action_item_language_variations/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.action_item_language_variations');
COMMIT;  

