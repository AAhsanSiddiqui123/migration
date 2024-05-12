-- Revert: schemas/dashboard_public/tables/tracks/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".tracks FROM authenticated;
COMMIT;  

