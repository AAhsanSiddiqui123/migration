-- Verify: schemas/dashboard_public/tables/object_type_value_tracks/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.object_type_value_tracks');
COMMIT;  

