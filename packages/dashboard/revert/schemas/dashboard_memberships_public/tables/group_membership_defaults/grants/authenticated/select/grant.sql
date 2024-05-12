-- Revert: schemas/dashboard_memberships_public/tables/group_membership_defaults/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_memberships_public".group_membership_defaults FROM authenticated;
COMMIT;  

