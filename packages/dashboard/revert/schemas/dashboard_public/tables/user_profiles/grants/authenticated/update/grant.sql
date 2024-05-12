-- Revert: schemas/dashboard_public/tables/user_profiles/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".user_profiles FROM authenticated;
COMMIT;  

