-- Revert: schemas/dashboard_memberships_public/tables/app_grants/indexes/app_grants_grantor_id_idx from pg

BEGIN;
DROP INDEX "dashboard_memberships_public".app_grants_grantor_id_idx;
COMMIT;  

