-- Revert: schemas/dashboard_roles_private/tables/api_tokens/constraints/api_tokens_access_token_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_roles_private".api_tokens 
    DROP CONSTRAINT api_tokens_access_token_key;

COMMIT;  

