-- Revert: schemas/dashboard_public/tables/users/indexes/users_search_tsv_idx from pg

BEGIN;
DROP INDEX "dashboard_public".users_search_tsv_idx;
COMMIT;  

