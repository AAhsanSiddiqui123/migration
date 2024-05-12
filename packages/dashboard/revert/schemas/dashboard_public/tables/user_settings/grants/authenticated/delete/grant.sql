-- Revert: schemas/dashboard_public/tables/user_settings/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".user_settings FROM authenticated;
COMMIT;  

