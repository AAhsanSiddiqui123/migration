-- Revert: schemas/dashboard_invites_public/tables/group_invites/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_invites_public".group_invites FROM authenticated;
COMMIT;  

