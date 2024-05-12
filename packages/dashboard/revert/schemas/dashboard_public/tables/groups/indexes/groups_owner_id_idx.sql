-- Revert: schemas/dashboard_public/tables/groups/indexes/groups_owner_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".groups_owner_id_idx;
COMMIT;  

