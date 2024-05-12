-- Deploy: schemas/dashboard_public/tables/actions/columns/id/alterations/alt0000000757 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
