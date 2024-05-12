-- Revert: schemas/dashboard_memberships_private/tables/app_memberships_acl/grants/public/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_memberships_private".app_memberships_acl FROM public;
COMMIT;  

