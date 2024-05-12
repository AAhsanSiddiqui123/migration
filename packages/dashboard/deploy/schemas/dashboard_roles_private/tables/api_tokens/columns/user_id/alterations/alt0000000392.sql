-- Deploy: schemas/dashboard_roles_private/tables/api_tokens/columns/user_id/alterations/alt0000000392 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_private/schema
-- requires: schemas/dashboard_roles_private/tables/api_tokens/table
-- requires: schemas/dashboard_roles_private/tables/api_tokens/columns/user_id/column

BEGIN;

ALTER TABLE "dashboard_roles_private".api_tokens 
    ALTER COLUMN user_id SET NOT NULL;
COMMIT;
