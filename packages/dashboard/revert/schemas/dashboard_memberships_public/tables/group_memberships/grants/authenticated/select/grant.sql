-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_memberships_public".group_memberships FROM authenticated;
COMMIT;  

