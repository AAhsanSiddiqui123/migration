-- Revert: schemas/dashboard_invites_public/tables/member_invites/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_invites_public".member_invites FROM authenticated;
COMMIT;  

