-- Deploy: schemas/dashboard_roles_private/tables/api_tokens/columns/id/alterations/alt0000000390 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_private/schema
-- requires: schemas/dashboard_roles_private/tables/api_tokens/table
-- requires: schemas/dashboard_roles_private/tables/api_tokens/columns/id/column

BEGIN;

ALTER TABLE "dashboard_roles_private".api_tokens 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
