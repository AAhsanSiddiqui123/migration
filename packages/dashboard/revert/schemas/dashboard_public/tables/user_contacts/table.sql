-- Revert: schemas/dashboard_public/tables/user_contacts/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_contacts;
COMMIT;  

