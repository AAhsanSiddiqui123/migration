-- Revert: schemas/dashboard_public/tables/group_locations/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".group_locations FROM authenticated;
COMMIT;  

