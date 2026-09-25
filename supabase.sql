create extension if not exists pgcrypto;
create table if not exists public.games(id uuid primary key default gen_random_uuid(),room_code text unique not null,red_player_id uuid not null,red_name text not null,black_player_id uuid,black_name text,status text not null default 'waiting',board_state jsonb not null,current_turn text not null default 'r',winner_id uuid,result text,time_control integer default 600,red_time integer default 600,black_time integer default 600,started_at timestamptz,ended_at timestamptz,created_at timestamptz default now());
alter table public.games enable row level security;
create policy "games select" on public.games for select using(true);
create policy "games insert" on public.games for insert with check(true);
create policy "games update" on public.games for update using(true) with check(true);
alter publication supabase_realtime add table public.games;
