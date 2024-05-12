-- Revert: schemas/dashboard_public/tables/message_groups/table from pg

BEGIN;
DROP TABLE "dashboard_public".message_groups;
COMMIT;  

