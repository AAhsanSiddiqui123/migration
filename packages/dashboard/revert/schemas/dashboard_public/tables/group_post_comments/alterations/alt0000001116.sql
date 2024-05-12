-- Revert: schemas/dashboard_public/tables/group_post_comments/alterations/alt0000001116 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_comments
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

