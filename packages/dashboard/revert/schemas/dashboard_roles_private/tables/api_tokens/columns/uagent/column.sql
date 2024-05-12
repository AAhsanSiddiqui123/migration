-- Revert: schemas/dashboard_roles_private/tables/api_tokens/columns/uagent/column from pg

BEGIN;


ALTER TABLE "dashboard_roles_private".api_tokens DROP COLUMN uagent;
COMMIT;  

