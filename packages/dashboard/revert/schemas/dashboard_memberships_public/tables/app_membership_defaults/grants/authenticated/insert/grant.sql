-- Revert: schemas/dashboard_memberships_public/tables/app_membership_defaults/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_memberships_public".app_membership_defaults FROM authenticated;
COMMIT;  

