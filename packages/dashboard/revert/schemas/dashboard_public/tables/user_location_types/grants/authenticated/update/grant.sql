-- Revert: schemas/dashboard_public/tables/user_location_types/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".user_location_types FROM authenticated;
COMMIT;  

