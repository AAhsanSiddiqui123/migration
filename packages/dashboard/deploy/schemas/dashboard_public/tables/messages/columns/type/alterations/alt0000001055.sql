-- Deploy: schemas/dashboard_public/tables/messages/columns/type/alterations/alt0000001055 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/table
-- requires: schemas/dashboard_public/tables/messages/columns/type/column

BEGIN;

ALTER TABLE "dashboard_public".messages 
    ALTER COLUMN type SET NOT NULL;
COMMIT;
