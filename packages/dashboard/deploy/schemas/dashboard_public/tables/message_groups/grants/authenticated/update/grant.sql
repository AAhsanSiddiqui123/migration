-- Deploy: schemas/dashboard_public/tables/message_groups/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/message_groups/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".message_groups TO authenticated;
COMMIT;
