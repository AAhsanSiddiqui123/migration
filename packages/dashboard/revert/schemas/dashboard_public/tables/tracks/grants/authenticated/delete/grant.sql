-- Revert: schemas/dashboard_public/tables/tracks/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".tracks FROM authenticated;
COMMIT;  

