-- Deploy: schemas/dashboard_roles_private/tables/api_tokens/columns/origin/alterations/alt0000000393 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_private/schema
-- requires: schemas/dashboard_roles_private/tables/api_tokens/table
-- requires: schemas/dashboard_roles_private/tables/api_tokens/columns/origin/column

BEGIN;

ALTER TABLE "dashboard_roles_private".api_tokens 
    ALTER COLUMN origin SET DEFAULT jwt_public.current_origin();
COMMIT;
