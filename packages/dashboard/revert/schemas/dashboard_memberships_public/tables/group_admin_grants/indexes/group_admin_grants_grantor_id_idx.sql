-- Revert: schemas/dashboard_memberships_public/tables/group_admin_grants/indexes/group_admin_grants_grantor_id_idx from pg

BEGIN;
DROP INDEX "dashboard_memberships_public".group_admin_grants_grantor_id_idx;
COMMIT;  

