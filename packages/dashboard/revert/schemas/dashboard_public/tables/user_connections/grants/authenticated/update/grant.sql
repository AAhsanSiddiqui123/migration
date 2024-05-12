-- Revert: schemas/dashboard_public/tables/user_connections/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ( accepted ) ON TABLE "dashboard_public".user_connections FROM authenticated;
COMMIT;  

