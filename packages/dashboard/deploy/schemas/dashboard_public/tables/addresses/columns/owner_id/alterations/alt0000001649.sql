-- Deploy: schemas/dashboard_public/tables/addresses/columns/owner_id/alterations/alt0000001649 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table
-- requires: schemas/dashboard_public/tables/addresses/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".addresses 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
