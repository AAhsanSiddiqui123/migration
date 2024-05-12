-- Deploy: schemas/dashboard_public/tables/objects/columns/is_private/alterations/alt0000000655 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table
-- requires: schemas/dashboard_public/tables/objects/columns/is_private/column

BEGIN;

ALTER TABLE "dashboard_public".objects 
    ALTER COLUMN is_private SET DEFAULT false;
COMMIT;
