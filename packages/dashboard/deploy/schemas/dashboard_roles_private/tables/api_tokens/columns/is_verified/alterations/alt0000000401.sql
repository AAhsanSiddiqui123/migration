-- Deploy: schemas/dashboard_roles_private/tables/api_tokens/columns/is_verified/alterations/alt0000000401 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_private/schema
-- requires: schemas/dashboard_roles_private/tables/api_tokens/table
-- requires: schemas/dashboard_roles_private/tables/api_tokens/columns/is_verified/column

BEGIN;

ALTER TABLE "dashboard_roles_private".api_tokens 
    ALTER COLUMN is_verified SET DEFAULT FALSE;
COMMIT;
