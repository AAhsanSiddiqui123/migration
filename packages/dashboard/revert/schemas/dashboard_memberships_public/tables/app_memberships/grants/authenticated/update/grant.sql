-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ( is_banned, is_approved, is_verified, is_disabled, granted ) ON TABLE "dashboard_memberships_public".app_memberships FROM authenticated;
COMMIT;  

