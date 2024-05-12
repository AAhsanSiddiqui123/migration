-- Deploy: schemas/dashboard_public/tables/impacts_conditions/columns/value/alterations/alt0000000730 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/table
-- requires: schemas/dashboard_public/tables/impacts_conditions/columns/value/column

BEGIN;

ALTER TABLE "dashboard_public".impacts_conditions 
    ALTER COLUMN value SET NOT NULL;
COMMIT;
