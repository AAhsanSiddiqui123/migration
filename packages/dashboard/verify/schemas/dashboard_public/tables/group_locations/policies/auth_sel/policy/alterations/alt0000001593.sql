-- Verify: schemas/dashboard_public/tables/group_locations/policies/auth_sel/policy/alterations/alt0000001593 on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.group_locations');
COMMIT;  

