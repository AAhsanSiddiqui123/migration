-- Revert: schemas/dashboard_public/tables/user_location_types/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".user_location_types FROM authenticated;
COMMIT;  

