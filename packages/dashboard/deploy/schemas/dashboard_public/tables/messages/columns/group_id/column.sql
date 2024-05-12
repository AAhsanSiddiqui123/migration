-- Deploy: schemas/dashboard_public/tables/messages/columns/group_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/table

BEGIN;

ALTER TABLE "dashboard_public".messages ADD COLUMN group_id uuid;
COMMIT;
