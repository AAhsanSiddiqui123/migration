-- Revert: schemas/dashboard_memberships_public/tables/owner_grants/indexes/owner_grants_grantor_id_idx from pg

BEGIN;
DROP INDEX "dashboard_memberships_public".owner_grants_grantor_id_idx;
COMMIT;  

