-- Revert: schemas/dashboard_public/tables/group_locations/grants/authenticated/delete/grant/alterations/alt0000001592 from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".group_locations FROM authenticated;
COMMIT;  

