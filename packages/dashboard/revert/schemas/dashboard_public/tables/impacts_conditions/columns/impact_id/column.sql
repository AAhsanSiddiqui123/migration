-- Revert: schemas/dashboard_public/tables/impacts_conditions/columns/impact_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions DROP COLUMN impact_id;
COMMIT;  

