-- Revert: schemas/dashboard_memberships_public/tables/app_owner_grants/indexes/app_owner_grants_grantor_id_idx from pg

BEGIN;
DROP INDEX "dashboard_memberships_public".app_owner_grants_grantor_id_idx;
COMMIT;  

