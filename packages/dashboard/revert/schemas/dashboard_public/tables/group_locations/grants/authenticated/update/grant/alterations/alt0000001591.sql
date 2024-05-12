-- Revert: schemas/dashboard_public/tables/group_locations/grants/authenticated/update/grant/alterations/alt0000001591 from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".group_locations FROM authenticated;
COMMIT;  

