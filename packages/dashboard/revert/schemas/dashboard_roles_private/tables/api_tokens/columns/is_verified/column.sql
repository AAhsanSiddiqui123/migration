-- Revert: schemas/dashboard_roles_private/tables/api_tokens/columns/is_verified/column from pg

BEGIN;


ALTER TABLE "dashboard_roles_private".api_tokens DROP COLUMN is_verified;
COMMIT;  

