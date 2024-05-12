-- Revert schemas/dashboard_public/tables/data_tag_language_variations/triggers/timestamps from pg

BEGIN;

ALTER TABLE dashboard_public.data_tag_language_variations DROP COLUMN created_at;
ALTER TABLE dashboard_public.data_tag_language_variations DROP COLUMN updated_at;
DROP TRIGGER update_dashboard_public_data_tag_language_variations_modtime ON dashboard_public.data_tag_language_variations;

COMMIT;
