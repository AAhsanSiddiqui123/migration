-- Revert: schemas/dashboard_memberships_public/tables/group_admin_grants/alterations/alt0000000342 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_admin_grants
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

