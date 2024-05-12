-- Revert: schemas/dashboard_memberships_public/tables/memberships/indexes/memberships_is_admin_idx from pg

BEGIN;
DROP INDEX "dashboard_memberships_public".memberships_is_admin_idx;
COMMIT;  

