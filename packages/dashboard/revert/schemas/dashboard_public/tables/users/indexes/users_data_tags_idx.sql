-- Revert: schemas/dashboard_public/tables/users/indexes/users_data_tags_idx from pg

BEGIN;
DROP INDEX "dashboard_public".users_data_tags_idx;
COMMIT;  

