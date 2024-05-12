-- Deploy: schemas/dashboard_public/tables/impacts_conditions/columns/op/alterations/alt0000000728 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/table
-- requires: schemas/dashboard_public/tables/impacts_conditions/columns/op/column

BEGIN;

ALTER TABLE "dashboard_public".impacts_conditions 
    ALTER COLUMN op SET DEFAULT 0;
COMMIT;
