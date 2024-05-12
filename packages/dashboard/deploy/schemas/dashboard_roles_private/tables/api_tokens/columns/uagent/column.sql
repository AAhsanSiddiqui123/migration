-- Deploy: schemas/dashboard_roles_private/tables/api_tokens/columns/uagent/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_private/schema
-- requires: schemas/dashboard_roles_private/tables/api_tokens/table

BEGIN;

ALTER TABLE "dashboard_roles_private".api_tokens ADD COLUMN uagent text;
COMMIT;
