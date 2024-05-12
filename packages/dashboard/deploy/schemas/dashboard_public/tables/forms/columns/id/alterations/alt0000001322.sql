-- Deploy: schemas/dashboard_public/tables/forms/columns/id/alterations/alt0000001322 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table
-- requires: schemas/dashboard_public/tables/forms/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".forms 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
