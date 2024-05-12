-- Deploy dashboard:schemas/dashboard_public/tables/data_tags/alterations/data_tags_table_comments to pg

BEGIN;

COMMENT ON TABLE dashboard_public.data_tags IS '@i18n data_tag_language_variations';


COMMIT;
