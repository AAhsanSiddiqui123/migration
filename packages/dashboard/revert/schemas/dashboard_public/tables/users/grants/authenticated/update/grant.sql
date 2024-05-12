-- Revert: schemas/dashboard_public/tables/users/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ( display_name, profile_picture ) ON TABLE "dashboard_public".users FROM authenticated;
COMMIT;  

