-- Deploy: schemas/dashboard_public/tables/actions/columns/is_private/alterations/alt0000000765 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/is_private/column

BEGIN;

ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN is_private SET NOT NULL;
COMMIT;
