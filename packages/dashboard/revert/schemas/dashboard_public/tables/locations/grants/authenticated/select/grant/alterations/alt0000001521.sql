-- Revert: schemas/dashboard_public/tables/locations/grants/authenticated/select/grant/alterations/alt0000001521 from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".locations FROM authenticated;
COMMIT;  

