-- Deploy: schemas/dashboard_public/tables/user_messages/columns/received/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_messages/table

BEGIN;

ALTER TABLE "dashboard_public".user_messages ADD COLUMN received boolean;
COMMIT;
