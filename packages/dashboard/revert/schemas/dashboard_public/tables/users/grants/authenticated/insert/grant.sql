-- Revert: schemas/dashboard_public/tables/users/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ( type, display_name, profile_picture ) ON TABLE "dashboard_public".users FROM authenticated;
COMMIT;  

