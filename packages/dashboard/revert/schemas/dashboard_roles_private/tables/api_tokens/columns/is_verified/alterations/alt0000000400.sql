-- Revert: schemas/dashboard_roles_private/tables/api_tokens/columns/is_verified/alterations/alt0000000400 from pg

BEGIN;


ALTER TABLE "dashboard_roles_private".api_tokens 
    ALTER COLUMN is_verified DROP NOT NULL;


COMMIT;  

