-- Verify: schemas/dashboard_public/tables/post_comments/triggers/_000000000_ensure_update_post_id on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_update_post_id');
COMMIT;  

