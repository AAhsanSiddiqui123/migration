-- Revert: schemas/dashboard_public/tables/quantities/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".quantities FROM authenticated;
COMMIT;  

