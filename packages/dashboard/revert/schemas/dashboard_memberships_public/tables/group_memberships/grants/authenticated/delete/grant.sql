-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_memberships_public".group_memberships FROM authenticated;
COMMIT;  

