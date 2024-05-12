-- Revert dashboard:schemas/dashboard_public/tables/data_tags/alterations/data_tags_table_comments from pg

BEGIN;

COMMENT ON TABLE dashboard_public.data_tags IS '';


COMMIT;
