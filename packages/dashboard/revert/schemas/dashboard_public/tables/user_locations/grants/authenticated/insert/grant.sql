-- Revert: schemas/dashboard_public/tables/user_locations/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".user_locations FROM authenticated;
COMMIT;  

