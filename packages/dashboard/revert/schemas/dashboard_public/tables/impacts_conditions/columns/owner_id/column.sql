-- Revert: schemas/dashboard_public/tables/impacts_conditions/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions DROP COLUMN owner_id;
COMMIT;  

