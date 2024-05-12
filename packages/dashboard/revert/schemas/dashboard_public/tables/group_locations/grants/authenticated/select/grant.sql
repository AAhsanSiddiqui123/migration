-- Revert: schemas/dashboard_public/tables/group_locations/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".group_locations FROM authenticated;
COMMIT;  

