-- Deploy: schemas/dashboard_roles_private/tables/api_tokens/constraints/api_tokens_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_private/schema
-- requires: schemas/dashboard_roles_private/tables/api_tokens/table

BEGIN;

ALTER TABLE "dashboard_roles_private".api_tokens
    ADD CONSTRAINT api_tokens_pkey PRIMARY KEY (id);
COMMIT;
