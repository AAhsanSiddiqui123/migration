-- Verify: schemas/dashboard_public/tables/tracks/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.tracks');
COMMIT;  

