-- Verify: schemas/dashboard_public/tables/group_locations/policies/auth_upd/policy/alterations/alt0000001595 on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.group_locations');
COMMIT;  

