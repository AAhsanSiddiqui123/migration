-- Verify: schemas/dashboard_public/tables/tracks/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.tracks');
COMMIT;  

