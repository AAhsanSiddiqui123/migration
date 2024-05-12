-- Revert: schemas/dashboard_public/tables/locations/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".locations FROM authenticated;
COMMIT;  

