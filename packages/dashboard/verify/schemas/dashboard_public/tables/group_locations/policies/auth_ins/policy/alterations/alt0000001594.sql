-- Verify: schemas/dashboard_public/tables/group_locations/policies/auth_ins/policy/alterations/alt0000001594 on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.group_locations');
COMMIT;  

