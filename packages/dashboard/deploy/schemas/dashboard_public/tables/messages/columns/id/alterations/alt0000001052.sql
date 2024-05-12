-- Deploy: schemas/dashboard_public/tables/messages/columns/id/alterations/alt0000001052 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/table
-- requires: schemas/dashboard_public/tables/messages/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".messages 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
