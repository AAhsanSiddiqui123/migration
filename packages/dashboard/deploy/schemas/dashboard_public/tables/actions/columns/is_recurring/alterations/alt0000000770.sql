-- Deploy: schemas/dashboard_public/tables/actions/columns/is_recurring/alterations/alt0000000770 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/is_recurring/column

BEGIN;

ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN is_recurring SET DEFAULT false;
COMMIT;
