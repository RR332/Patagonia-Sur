-- ============================================
-- PATAGONIA SUR - SUPABASE DATABASE SETUP
-- ============================================
-- Ejecuta este script en Supabase SQL Editor
-- para crear la tabla y configurar la seguridad
-- ============================================

-- 1. Crear tabla para contactos
create table if not exists public.contactos_patagonia_sur (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  full_name text not null,
  phone text not null,
  email text not null,
  company text null,
  country text null,
  interest text not null,
  comments text null
);

-- 2. Crear índice para mejorar consultas por fecha
create index if not exists contactos_patagonia_sur_created_at_idx
  on public.contactos_patagonia_sur (created_at desc);

-- 3. Activar Row Level Security (RLS)
alter table public.contactos_patagonia_sur enable row level security;

-- 4. Eliminar policy anterior si existe
drop policy if exists "allow_anonymous_insert_contactos" on public.contactos_patagonia_sur;

-- 5. Crear policy para permitir INSERT desde el frontend
create policy "allow_anonymous_insert_contactos"
on public.contactos_patagonia_sur
for insert
to anon
with check (true);

-- ============================================
-- VERIFICACIÓN
-- ============================================
-- Para verificar que todo está correcto:
-- SELECT * FROM contactos_patagonia_sur ORDER BY created_at DESC LIMIT 10;
