-- Revert: schemas/dashboard_public/tables/user_settings/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".user_settings FROM authenticated;
COMMIT;  

