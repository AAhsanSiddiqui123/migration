-- Revert: schemas/dashboard_simple_secrets/tables/user_secrets/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_simple_secrets".user_secrets FROM authenticated;
COMMIT;  

