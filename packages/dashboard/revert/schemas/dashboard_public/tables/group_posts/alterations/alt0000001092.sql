-- Revert: schemas/dashboard_public/tables/group_posts/alterations/alt0000001092 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_posts
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

