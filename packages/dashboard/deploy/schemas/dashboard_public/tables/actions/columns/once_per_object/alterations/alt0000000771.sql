-- Deploy: schemas/dashboard_public/tables/actions/columns/once_per_object/alterations/alt0000000771 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/once_per_object/column

BEGIN;

ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN once_per_object SET NOT NULL;
COMMIT;
