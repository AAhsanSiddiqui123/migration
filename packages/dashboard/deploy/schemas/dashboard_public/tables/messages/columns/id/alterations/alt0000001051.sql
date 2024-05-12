-- Deploy: schemas/dashboard_public/tables/messages/columns/id/alterations/alt0000001051 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/table
-- requires: schemas/dashboard_public/tables/messages/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".messages 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
