-- Revert: schemas/dashboard_roles_private/tables/api_tokens/columns/origin/alterations/alt0000000393 from pg

BEGIN;


ALTER TABLE "dashboard_roles_private".api_tokens 
    ALTER COLUMN origin DROP DEFAULT;

COMMIT;  

