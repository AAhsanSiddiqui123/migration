-- Verify: schemas/dashboard_public/tables/tracks/policies/auth_ins_create_track_check/policy on pg

BEGIN;
SELECT verify_policy('auth_ins_create_track_check', 'dashboard_public.tracks');
COMMIT;  

