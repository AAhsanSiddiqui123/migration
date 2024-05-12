-- Revert: schemas/dashboard_public/tables/group_locations/grants/authenticated/insert/grant/alterations/alt0000001589 from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".group_locations FROM authenticated;
COMMIT;  

