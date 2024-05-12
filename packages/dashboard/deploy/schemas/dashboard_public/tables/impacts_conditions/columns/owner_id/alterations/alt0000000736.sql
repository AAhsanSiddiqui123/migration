-- Deploy: schemas/dashboard_public/tables/impacts_conditions/columns/owner_id/alterations/alt0000000736 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/table
-- requires: schemas/dashboard_public/tables/impacts_conditions/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".impacts_conditions 
    ALTER COLUMN owner_id SET DEFAULT uuid_nil();
COMMIT;
