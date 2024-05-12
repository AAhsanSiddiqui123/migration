-- Revert: schemas/dashboard_public/tables/user_locations/grants/authenticated/delete/grant/alterations/alt0000001551 from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".user_locations FROM authenticated;
COMMIT;  

