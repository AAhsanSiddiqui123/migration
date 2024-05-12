-- Revert: schemas/dashboard_public/tables/locations/grants/authenticated/update/grant/alterations/alt0000001522 from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".locations FROM authenticated;
COMMIT;  

