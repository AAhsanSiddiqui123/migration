-- Revert: schemas/dashboard_public/tables/messages/table from pg

BEGIN;
DROP TABLE "dashboard_public".messages;
COMMIT;  

