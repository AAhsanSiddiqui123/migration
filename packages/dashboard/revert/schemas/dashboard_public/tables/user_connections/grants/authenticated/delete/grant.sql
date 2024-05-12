-- Revert: schemas/dashboard_public/tables/user_connections/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".user_connections FROM authenticated;
COMMIT;  

