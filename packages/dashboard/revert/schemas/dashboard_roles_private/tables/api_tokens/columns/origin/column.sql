-- Revert: schemas/dashboard_roles_private/tables/api_tokens/columns/origin/column from pg

BEGIN;


ALTER TABLE "dashboard_roles_private".api_tokens DROP COLUMN origin;
COMMIT;  

