-- Deploy: schemas/dashboard_public/tables/messages/columns/group_id/alterations/alt0000001058 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/table
-- requires: schemas/dashboard_public/tables/messages/columns/group_id/column

BEGIN;

ALTER TABLE "dashboard_public".messages 
    ALTER COLUMN group_id SET NOT NULL;
COMMIT;
