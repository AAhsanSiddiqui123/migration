-- Revert: schemas/dashboard_public/tables/actions/indexes/actions_start_date_end_date_idx from pg

BEGIN;
DROP INDEX "dashboard_public".actions_start_date_end_date_idx;
COMMIT;  

