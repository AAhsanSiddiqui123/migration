-- Revert: schemas/dashboard_public/tables/user_location_types/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".user_location_types FROM authenticated;
COMMIT;  

