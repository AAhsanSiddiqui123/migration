-- Deploy: schemas/dashboard_public/tables/message_groups/columns/id/alterations/alt0000001049 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/message_groups/table
-- requires: schemas/dashboard_public/tables/message_groups/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".message_groups 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
