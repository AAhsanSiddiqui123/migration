-- Deploy: schemas/dashboard_public/tables/actions/columns/is_published/alterations/alt0000000764 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/is_published/column

BEGIN;

ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN is_published SET DEFAULT false;
COMMIT;
