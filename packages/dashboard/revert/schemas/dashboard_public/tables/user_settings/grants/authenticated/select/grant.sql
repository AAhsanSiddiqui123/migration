-- Revert: schemas/dashboard_public/tables/user_settings/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_settings FROM authenticated;
COMMIT;  

