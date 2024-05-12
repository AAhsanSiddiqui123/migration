-- Deploy: schemas/dashboard_public/tables/user_characteristics/columns/research_to_doer/alterations/alt0000000596 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table
-- requires: schemas/dashboard_public/tables/user_characteristics/columns/research_to_doer/column

BEGIN;
ALTER TABLE "dashboard_public".user_characteristics ADD CONSTRAINT user_characteristics_research_to_doer_chk CHECK (research_to_doer >= 1 AND research_to_doer <= 5);
COMMIT;
