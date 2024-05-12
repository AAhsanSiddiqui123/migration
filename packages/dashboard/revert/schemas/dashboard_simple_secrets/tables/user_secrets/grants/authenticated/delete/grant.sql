-- Revert: schemas/dashboard_simple_secrets/tables/user_secrets/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_simple_secrets".user_secrets FROM authenticated;
COMMIT;  

