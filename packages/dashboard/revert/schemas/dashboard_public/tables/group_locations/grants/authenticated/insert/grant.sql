-- Revert: schemas/dashboard_public/tables/group_locations/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".group_locations FROM authenticated;
COMMIT;  

