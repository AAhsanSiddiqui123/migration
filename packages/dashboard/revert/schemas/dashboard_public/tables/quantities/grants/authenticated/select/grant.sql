-- Revert: schemas/dashboard_public/tables/quantities/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".quantities FROM authenticated;
COMMIT;  

