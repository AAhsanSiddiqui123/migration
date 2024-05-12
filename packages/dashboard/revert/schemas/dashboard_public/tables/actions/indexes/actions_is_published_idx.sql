-- Revert: schemas/dashboard_public/tables/actions/indexes/actions_is_published_idx from pg

BEGIN;
DROP INDEX "dashboard_public".actions_is_published_idx;
COMMIT;  

