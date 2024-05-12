-- Revert: schemas/dashboard_memberships_public/tables/grants/indexes/grants_entity_id_idx from pg

BEGIN;
DROP INDEX "dashboard_memberships_public".grants_entity_id_idx;
COMMIT;  

