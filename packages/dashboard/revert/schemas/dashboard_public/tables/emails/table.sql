-- Revert: schemas/dashboard_public/tables/emails/table from pg

BEGIN;
DROP TABLE "dashboard_public".emails;
COMMIT;  

