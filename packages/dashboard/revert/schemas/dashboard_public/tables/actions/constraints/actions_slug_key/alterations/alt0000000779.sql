-- Revert: schemas/dashboard_public/tables/actions/constraints/actions_slug_key/alterations/alt0000000779 from pg

BEGIN;
COMMENT ON CONSTRAINT actions_slug_key ON "dashboard_public".actions IS NULL;
COMMIT;  

