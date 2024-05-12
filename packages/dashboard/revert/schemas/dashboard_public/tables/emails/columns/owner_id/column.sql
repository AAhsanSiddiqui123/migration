-- Revert: schemas/dashboard_public/tables/emails/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".emails DROP COLUMN owner_id;
COMMIT;  

