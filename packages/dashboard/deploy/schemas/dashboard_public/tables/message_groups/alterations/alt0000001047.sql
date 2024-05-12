-- Deploy: schemas/dashboard_public/tables/message_groups/alterations/alt0000001047 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/message_groups/table

BEGIN;

ALTER TABLE "dashboard_public".message_groups
    DISABLE ROW LEVEL SECURITY;
COMMIT;
