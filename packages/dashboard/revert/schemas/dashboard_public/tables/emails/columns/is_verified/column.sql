-- Revert: schemas/dashboard_public/tables/emails/columns/is_verified/column from pg

BEGIN;


ALTER TABLE "dashboard_public".emails DROP COLUMN is_verified;
COMMIT;  

