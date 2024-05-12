-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/research_to_doer/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_characteristics DROP COLUMN research_to_doer;
COMMIT;  

