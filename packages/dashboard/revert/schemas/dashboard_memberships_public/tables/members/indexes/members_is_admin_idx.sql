-- Revert: schemas/dashboard_memberships_public/tables/members/indexes/members_is_admin_idx from pg

BEGIN;
DROP INDEX "dashboard_memberships_public".members_is_admin_idx;
COMMIT;  

