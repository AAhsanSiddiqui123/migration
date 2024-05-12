-- Verify schemas/dashboard_public/tables/user_tracks/policies/auth_upd  on pg

BEGIN;

SELECT verify_policy ('auth_upd', 'dashboard_public.user_tracks');


ROLLBACK;
