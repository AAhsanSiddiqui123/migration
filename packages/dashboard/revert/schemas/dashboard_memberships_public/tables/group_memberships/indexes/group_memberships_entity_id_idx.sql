-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/indexes/group_memberships_entity_id_idx from pg

BEGIN;
DROP INDEX "dashboard_memberships_public".group_memberships_entity_id_idx;
COMMIT;  

