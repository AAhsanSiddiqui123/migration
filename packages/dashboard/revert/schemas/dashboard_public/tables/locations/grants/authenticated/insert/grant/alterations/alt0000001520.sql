-- Revert: schemas/dashboard_public/tables/locations/grants/authenticated/insert/grant/alterations/alt0000001520 from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".locations FROM authenticated;
COMMIT;  

