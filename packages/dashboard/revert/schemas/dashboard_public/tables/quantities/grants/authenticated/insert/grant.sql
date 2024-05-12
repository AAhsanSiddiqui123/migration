-- Revert: schemas/dashboard_public/tables/quantities/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".quantities FROM authenticated;
COMMIT;  

