-- Revert: schemas/dashboard_public/tables/user_profiles/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_profiles FROM authenticated;
COMMIT;  

