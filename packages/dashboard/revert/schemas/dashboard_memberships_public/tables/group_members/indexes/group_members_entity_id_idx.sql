-- Revert: schemas/dashboard_memberships_public/tables/group_members/indexes/group_members_entity_id_idx from pg

BEGIN;
DROP INDEX "dashboard_memberships_public".group_members_entity_id_idx;
COMMIT;  

