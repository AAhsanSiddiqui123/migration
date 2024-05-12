-- Revert: schemas/dashboard_public/tables/group_post_reactions/alterations/alt0000001101 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_reactions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

