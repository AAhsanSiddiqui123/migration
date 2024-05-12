-- Revert: schemas/dashboard_memberships_public/tables/group_membership_defaults/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_memberships_public".group_membership_defaults FROM authenticated;
COMMIT;  

