-- Deploy: schemas/dashboard_public/tables/emails/columns/id/alterations/alt0000000431 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/emails/table
-- requires: schemas/dashboard_public/tables/emails/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".emails 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
