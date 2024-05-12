-- Revert: schemas/dashboard_roles_private/tables/api_tokens/columns/access_token_expires_at/alterations/alt0000000399 from pg

BEGIN;


ALTER TABLE "dashboard_roles_private".api_tokens 
    ALTER COLUMN access_token_expires_at DROP DEFAULT;

COMMIT;  

