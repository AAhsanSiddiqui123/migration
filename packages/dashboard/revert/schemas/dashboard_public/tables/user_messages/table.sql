-- Revert: schemas/dashboard_public/tables/user_messages/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_messages;
COMMIT;  

