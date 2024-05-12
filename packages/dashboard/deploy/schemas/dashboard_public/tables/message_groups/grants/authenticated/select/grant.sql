-- Deploy: schemas/dashboard_public/tables/message_groups/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/message_groups/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".message_groups TO authenticated;
COMMIT;
