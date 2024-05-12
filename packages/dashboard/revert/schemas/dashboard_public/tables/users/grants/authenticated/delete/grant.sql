-- Revert: schemas/dashboard_public/tables/users/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".users FROM authenticated;
COMMIT;  

