-- Revert: schemas/dashboard_public/tables/emails/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".emails DROP COLUMN id;
COMMIT;  

