-- Revert: schemas/dashboard_public/tables/tracks/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".tracks FROM authenticated;
COMMIT;  

