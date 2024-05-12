-- Verify: schemas/dashboard_public/tables/group_locations/policies/auth_del/policy/alterations/alt0000001596 on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.group_locations');
COMMIT;  

