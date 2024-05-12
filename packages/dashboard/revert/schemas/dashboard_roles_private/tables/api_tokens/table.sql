-- Revert: schemas/dashboard_roles_private/tables/api_tokens/table from pg

BEGIN;
DROP TABLE "dashboard_roles_private".api_tokens;
COMMIT;  

