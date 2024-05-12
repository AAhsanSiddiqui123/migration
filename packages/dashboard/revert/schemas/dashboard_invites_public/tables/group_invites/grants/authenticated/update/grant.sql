-- Revert: schemas/dashboard_invites_public/tables/group_invites/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_invites_public".group_invites FROM authenticated;
COMMIT;  

