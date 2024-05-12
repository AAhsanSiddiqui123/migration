-- Verify: schemas/dashboard_public/tables/action_item_language_variations/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.action_item_language_variations');
COMMIT;  

