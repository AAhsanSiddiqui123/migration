-- Revert: schemas/dashboard_public/tables/groups/table from pg

BEGIN;
DROP TABLE "dashboard_public".groups;
COMMIT;  

