-- Verify: schemas/dashboard_public/tables/user_tracks/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.user_tracks');
COMMIT;  

