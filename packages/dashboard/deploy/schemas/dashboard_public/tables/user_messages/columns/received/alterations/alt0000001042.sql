-- Deploy: schemas/dashboard_public/tables/user_messages/columns/received/alterations/alt0000001042 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_messages/table
-- requires: schemas/dashboard_public/tables/user_messages/columns/received/column

BEGIN;

ALTER TABLE "dashboard_public".user_messages 
    ALTER COLUMN received SET DEFAULT false;
COMMIT;
