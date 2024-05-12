-- Revert: schemas/dashboard_public/tables/track_groups/indexes/track_groups_owner_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".track_groups_owner_id_idx;
COMMIT;  

