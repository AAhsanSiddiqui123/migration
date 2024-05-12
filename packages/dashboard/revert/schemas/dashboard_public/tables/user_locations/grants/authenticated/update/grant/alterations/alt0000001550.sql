-- Revert: schemas/dashboard_public/tables/user_locations/grants/authenticated/update/grant/alterations/alt0000001550 from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".user_locations FROM authenticated;
COMMIT;  

