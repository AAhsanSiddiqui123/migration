-- Revert: schemas/dashboard_public/tables/user_settings/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".user_settings FROM authenticated;
COMMIT;  

