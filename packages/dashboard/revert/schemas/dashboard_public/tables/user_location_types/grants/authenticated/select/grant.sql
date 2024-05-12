-- Revert: schemas/dashboard_public/tables/user_location_types/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_location_types FROM authenticated;
COMMIT;  

