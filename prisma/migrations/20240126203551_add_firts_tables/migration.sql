-- CreateTable
CREATE TABLE "beneficiarios" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "cpf" TEXT NOT NULL,
    "rg" TEXT NOT NULL,
    "telefone" TEXT NOT NULL,
    "nome_pai" TEXT NOT NULL,
    "nome_mae" TEXT NOT NULL,
    "data_nasc" TEXT NOT NULL,
    "raca" TEXT NOT NULL,
    "sexo" TEXT NOT NULL,
    "nacionalidade" TEXT NOT NULL,
    "estado_civil" TEXT NOT NULL,
    "situacao_conjugal" TEXT NOT NULL,
    "escolaridade" TEXT NOT NULL,
    "profissao" TEXT NOT NULL,
    "renda_formal" TEXT NOT NULL,
    "renda_informal" TEXT NOT NULL,
    "def_fisica" TEXT NOT NULL,
    "bpc_bolsa" TEXT NOT NULL,
    "cad_unico" TEXT NOT NULL,
    "tempo_residencia" TEXT NOT NULL,

    CONSTRAINT "beneficiarios_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "conjuges" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "cpf" TEXT NOT NULL,
    "rg" TEXT NOT NULL,
    "telefone" TEXT NOT NULL,
    "nome_pai" TEXT NOT NULL,
    "nome_mae" TEXT NOT NULL,
    "data_nasc" TEXT NOT NULL,
    "raca" TEXT NOT NULL,
    "sexo" TEXT NOT NULL,
    "nacionalidade" TEXT NOT NULL,
    "estado_civil" TEXT NOT NULL,
    "situacao_conjugal" TEXT NOT NULL,
    "escolaridade" TEXT NOT NULL,
    "profissao" TEXT NOT NULL,
    "renda_formal" TEXT NOT NULL,
    "renda_informal" TEXT NOT NULL,
    "def_fisica" TEXT NOT NULL,
    "bpc_bolsa" TEXT NOT NULL,
    "cad_unico" TEXT NOT NULL,
    "tempo_residencia" TEXT NOT NULL,

    CONSTRAINT "conjuges_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "beneficiarios_cpf_key" ON "beneficiarios"("cpf");

-- CreateIndex
CREATE UNIQUE INDEX "beneficiarios_rg_key" ON "beneficiarios"("rg");

-- CreateIndex
CREATE UNIQUE INDEX "conjuges_cpf_key" ON "conjuges"("cpf");

-- CreateIndex
CREATE UNIQUE INDEX "conjuges_rg_key" ON "conjuges"("rg");
