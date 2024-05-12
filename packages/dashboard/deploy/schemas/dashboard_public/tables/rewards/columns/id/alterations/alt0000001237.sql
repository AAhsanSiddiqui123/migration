-- Deploy: schemas/dashboard_public/tables/rewards/columns/id/alterations/alt0000001237 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/rewards/table
-- requires: schemas/dashboard_public/tables/rewards/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".rewards 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
