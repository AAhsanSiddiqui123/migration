-- Revert: schemas/dashboard_roles_private/tables/api_tokens/columns/ip/alterations/alt0000000394 from pg

BEGIN;


ALTER TABLE "dashboard_roles_private".api_tokens 
    ALTER COLUMN ip DROP DEFAULT;

COMMIT;  

