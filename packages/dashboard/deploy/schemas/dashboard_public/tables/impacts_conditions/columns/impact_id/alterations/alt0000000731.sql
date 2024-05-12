-- Deploy: schemas/dashboard_public/tables/impacts_conditions/columns/impact_id/alterations/alt0000000731 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/table
-- requires: schemas/dashboard_public/tables/impacts_conditions/columns/impact_id/column

BEGIN;

ALTER TABLE "dashboard_public".impacts_conditions 
    ALTER COLUMN impact_id SET NOT NULL;
COMMIT;
