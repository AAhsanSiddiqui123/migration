-- Deploy: schemas/dashboard_roles_private/tables/api_tokens/columns/totp_enabled/alterations/alt0000000402 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_private/schema
-- requires: schemas/dashboard_roles_private/tables/api_tokens/table
-- requires: schemas/dashboard_roles_private/tables/api_tokens/columns/totp_enabled/column

BEGIN;

ALTER TABLE "dashboard_roles_private".api_tokens 
    ALTER COLUMN totp_enabled SET NOT NULL;
COMMIT;
