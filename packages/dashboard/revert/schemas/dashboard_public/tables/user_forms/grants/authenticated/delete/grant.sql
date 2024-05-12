-- Revert: schemas/dashboard_public/tables/user_forms/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".user_forms FROM authenticated;
COMMIT;  

