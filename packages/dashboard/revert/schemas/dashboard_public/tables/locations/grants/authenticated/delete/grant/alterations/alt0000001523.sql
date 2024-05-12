-- Revert: schemas/dashboard_public/tables/locations/grants/authenticated/delete/grant/alterations/alt0000001523 from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".locations FROM authenticated;
COMMIT;  

