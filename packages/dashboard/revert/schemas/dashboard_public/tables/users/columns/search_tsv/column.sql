-- Revert: schemas/dashboard_public/tables/users/columns/search_tsv/column from pg

BEGIN;


ALTER TABLE "dashboard_public".users DROP COLUMN search_tsv;
COMMIT;  

