-- Revert: schemas/dashboard_public/tables/tracks/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".tracks FROM authenticated;
COMMIT;  

