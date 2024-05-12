-- Revert: schemas/dashboard_public/tables/actions/indexes/actions_tags_idx from pg

BEGIN;
DROP INDEX "dashboard_public".actions_tags_idx;
COMMIT;  

