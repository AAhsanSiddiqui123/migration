-- Revert: schemas/dashboard_public/tables/group_locations/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".group_locations FROM authenticated;
COMMIT;  

