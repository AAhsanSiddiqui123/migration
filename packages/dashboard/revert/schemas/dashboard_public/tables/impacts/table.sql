-- Revert: schemas/dashboard_public/tables/impacts/table from pg

BEGIN;
DROP TABLE "dashboard_public".impacts;
COMMIT;  

