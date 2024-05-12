-- Deploy: schemas/dashboard_public/tables/rewards/columns/owner_id/alterations/alt0000001239 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/rewards/table
-- requires: schemas/dashboard_public/tables/rewards/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".rewards 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
