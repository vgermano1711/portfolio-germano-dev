-- Execute este script no SQL Editor do seu projeto Supabase
-- (menu lateral: SQL Editor → New query → cole e clique em Run)

-- Tabela de projetos
CREATE TABLE IF NOT EXISTS projects (
  id          text PRIMARY KEY,
  name        text NOT NULL DEFAULT '',
  tags        jsonb NOT NULL DEFAULT '[]',
  desc        text NOT NULL DEFAULT '',
  img         text NOT NULL DEFAULT '',
  link        text NOT NULL DEFAULT '',
  created_at  timestamptz NOT NULL DEFAULT now()
);

-- Tabela de cursos
CREATE TABLE IF NOT EXISTS courses (
  id          text PRIMARY KEY,
  name        text NOT NULL DEFAULT '',
  inst        text NOT NULL DEFAULT '',
  created_at  timestamptz NOT NULL DEFAULT now()
);

-- Habilita Row Level Security
ALTER TABLE projects ENABLE ROW LEVEL SECURITY;
ALTER TABLE courses  ENABLE ROW LEVEL SECURITY;

-- Leitura pública (qualquer visitante pode ver os dados)
CREATE POLICY "leitura_publica_projetos" ON projects FOR SELECT USING (true);
CREATE POLICY "leitura_publica_cursos"   ON courses  FOR SELECT USING (true);

-- Escrita pública controlada pela senha no painel admin do portfólio
CREATE POLICY "escrita_admin_projetos" ON projects FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "escrita_admin_cursos"   ON courses  FOR ALL USING (true) WITH CHECK (true);
