-- Revert: schemas/dashboard_memberships_public/tables/memberships/indexes/memberships_is_owner_idx from pg

BEGIN;
DROP INDEX "dashboard_memberships_public".memberships_is_owner_idx;
COMMIT;  

