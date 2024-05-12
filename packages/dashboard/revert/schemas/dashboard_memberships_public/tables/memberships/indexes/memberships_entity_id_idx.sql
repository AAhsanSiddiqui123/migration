-- Revert: schemas/dashboard_memberships_public/tables/memberships/indexes/memberships_entity_id_idx from pg

BEGIN;
DROP INDEX "dashboard_memberships_public".memberships_entity_id_idx;
COMMIT;  

