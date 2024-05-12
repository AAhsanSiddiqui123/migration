-- Revert: schemas/dashboard_public/tables/user_connections/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".user_connections FROM authenticated;
COMMIT;  

