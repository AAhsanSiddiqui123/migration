-- Revert: schemas/dashboard_public/tables/objects/indexes/objects_is_private_idx from pg

BEGIN;
DROP INDEX "dashboard_public".objects_is_private_idx;
COMMIT;  

