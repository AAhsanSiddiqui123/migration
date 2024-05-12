-- Revert: schemas/dashboard_public/tables/user_profiles/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".user_profiles FROM authenticated;
COMMIT;  

