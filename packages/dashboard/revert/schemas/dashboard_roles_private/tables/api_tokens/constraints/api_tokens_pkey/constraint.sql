-- Revert: schemas/dashboard_roles_private/tables/api_tokens/constraints/api_tokens_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_roles_private".api_tokens 
    DROP CONSTRAINT api_tokens_pkey;

COMMIT;  

