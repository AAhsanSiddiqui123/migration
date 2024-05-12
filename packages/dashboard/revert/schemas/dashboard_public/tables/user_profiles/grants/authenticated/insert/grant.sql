-- Revert: schemas/dashboard_public/tables/user_profiles/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".user_profiles FROM authenticated;
COMMIT;  

