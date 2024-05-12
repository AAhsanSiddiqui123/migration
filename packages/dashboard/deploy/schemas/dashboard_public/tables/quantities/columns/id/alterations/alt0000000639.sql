-- Deploy: schemas/dashboard_public/tables/quantities/columns/id/alterations/alt0000000639 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/quantities/table
-- requires: schemas/dashboard_public/tables/quantities/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".quantities 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
