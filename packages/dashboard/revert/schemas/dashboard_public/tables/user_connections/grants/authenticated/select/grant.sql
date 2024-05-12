-- Revert: schemas/dashboard_public/tables/user_connections/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_connections FROM authenticated;
COMMIT;  

