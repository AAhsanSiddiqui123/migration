-- Deploy: schemas/dashboard_public/tables/impacts_conditions/columns/attr_id/alterations/alt0000000733 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/table
-- requires: schemas/dashboard_public/tables/impacts_conditions/columns/attr_id/column

BEGIN;

ALTER TABLE "dashboard_public".impacts_conditions 
    ALTER COLUMN attr_id SET NOT NULL;
COMMIT;
