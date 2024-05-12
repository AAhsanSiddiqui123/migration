-- Deploy: schemas/dashboard_public/tables/emails/columns/is_primary/alterations/alt0000000438 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/emails/table
-- requires: schemas/dashboard_public/tables/emails/columns/is_primary/column

BEGIN;

ALTER TABLE "dashboard_public".emails 
    ALTER COLUMN is_primary SET NOT NULL;
COMMIT;
