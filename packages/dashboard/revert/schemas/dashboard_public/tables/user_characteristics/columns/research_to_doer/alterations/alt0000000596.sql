-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/research_to_doer/alterations/alt0000000596 from pg

BEGIN;
ALTER TABLE "dashboard_public".user_characteristics DROP CONSTRAINT user_characteristics_research_to_doer_chk;
COMMIT;  

