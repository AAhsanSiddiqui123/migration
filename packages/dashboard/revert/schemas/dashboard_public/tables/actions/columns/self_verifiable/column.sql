-- Revert: schemas/dashboard_public/tables/actions/columns/self_verifiable/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN self_verifiable;
COMMIT;  

