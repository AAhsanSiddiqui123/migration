-- Deploy: schemas/dashboard_roles_private/tables/api_tokens/columns/access_token_expires_at/alterations/alt0000000399 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_private/schema
-- requires: schemas/dashboard_roles_private/tables/api_tokens/table
-- requires: schemas/dashboard_roles_private/tables/api_tokens/columns/access_token_expires_at/column

BEGIN;

ALTER TABLE "dashboard_roles_private".api_tokens 
    ALTER COLUMN access_token_expires_at SET DEFAULT (NOW() + interval '30 days');
COMMIT;
