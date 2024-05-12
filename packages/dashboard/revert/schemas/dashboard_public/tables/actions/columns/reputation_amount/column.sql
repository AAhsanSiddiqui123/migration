-- Revert: schemas/dashboard_public/tables/actions/columns/reputation_amount/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN reputation_amount;
COMMIT;  

