-- Verify schemas/dashboard_public/tables/data_tag_language_variations/triggers/timestamps  on pg

BEGIN;

SELECT created_at FROM dashboard_public.data_tag_language_variations LIMIT 1;
SELECT updated_at FROM dashboard_public.data_tag_language_variations LIMIT 1;
SELECT verify_trigger ('dashboard_public.update_dashboard_public_data_tag_language_variations_modtime');

ROLLBACK;
