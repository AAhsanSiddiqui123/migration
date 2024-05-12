-- Revert: schemas/dashboard_memberships_public/tables/membership_defaults/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_memberships_public".membership_defaults FROM authenticated;
COMMIT;  

