-- Revert: schemas/dashboard_memberships_private/tables/app_memberships_acl/alterations/alt0000000076 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_private".app_memberships_acl
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

