-- Revert: schemas/dashboard_public/tables/user_locations/grants/authenticated/select/grant/alterations/alt0000001549 from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_locations FROM authenticated;
COMMIT;  

