-- Revert: schemas/dashboard_public/tables/user_tracks/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".user_tracks FROM authenticated;
COMMIT;  

