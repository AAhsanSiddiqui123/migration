-- Revert: schemas/dashboard_memberships_public/tables/membership_defaults/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_memberships_public".membership_defaults FROM authenticated;
COMMIT;  

