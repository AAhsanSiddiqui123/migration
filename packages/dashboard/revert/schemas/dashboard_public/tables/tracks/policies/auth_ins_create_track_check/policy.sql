-- Revert: schemas/dashboard_public/tables/tracks/policies/auth_ins_create_track_check/policy from pg

BEGIN;
DROP POLICY auth_ins_create_track_check ON "dashboard_public".tracks;
COMMIT;  

