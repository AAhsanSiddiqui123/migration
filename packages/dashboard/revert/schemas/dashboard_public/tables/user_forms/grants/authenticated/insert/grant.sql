-- Revert: schemas/dashboard_public/tables/user_forms/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".user_forms FROM authenticated;
COMMIT;  

