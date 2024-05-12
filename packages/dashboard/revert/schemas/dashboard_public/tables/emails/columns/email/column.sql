-- Revert: schemas/dashboard_public/tables/emails/columns/email/column from pg

BEGIN;


ALTER TABLE "dashboard_public".emails DROP COLUMN email;
COMMIT;  

