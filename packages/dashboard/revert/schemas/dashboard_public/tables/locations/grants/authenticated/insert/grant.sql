-- Revert: schemas/dashboard_public/tables/locations/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".locations FROM authenticated;
COMMIT;  

