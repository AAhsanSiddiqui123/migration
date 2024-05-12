-- Revert: schemas/dashboard_invites_public/tables/group_invites/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_invites_public".group_invites FROM authenticated;
COMMIT;  

