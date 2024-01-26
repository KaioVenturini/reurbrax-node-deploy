import { PrismaClient } from "@prisma/client";
import fastify from "fastify";
import { z } from "zod";

const app = fastify();

const prisma = new PrismaClient();

app.get(`/beneficiarios`, async () => {
  const beneficiarios = await prisma.beneficiario.findMany();

  return { beneficiarios };
});

app.post(`/beneficiarios`, async (request, reply) => {
  const createBeneficiarioSchema = z.object({
    nome: z.string(),
    cpf: z.string(),
    rg: z.string(),
    telefone: z.string(),
    nome_pai: z.string(),
    nome_mae: z.string(),
    data_nasc: z.string(),
    raca: z.string(),
    sexo: z.string(),
    nacionalidade: z.string(),
    estado_civil: z.string(),
    situacao_conjugal: z.string(),
    escolaridade: z.string(),
    profissao: z.string(),
    renda_formal: z.string(),
    renda_informal: z.string(),
    def_fisica: z.string(),
    bpc_bolsa: z.string(),
    cad_unico: z.string(),
    tempo_residencia: z.string(),
  });

  const {
    nome,
    cpf,
    rg,
    telefone,
    nome_pai,
    nome_mae,
    data_nasc,
    raca,
    sexo,
    nacionalidade,
    estado_civil,
    situacao_conjugal,
    escolaridade,
    profissao,
    renda_formal,
    renda_informal,
    def_fisica,
    bpc_bolsa,
    cad_unico,
    tempo_residencia,
  } = createBeneficiarioSchema.parse(request.body);

  await prisma.beneficiario.create({
    data: {
      nome,
      cpf,
      rg,
      telefone,
      nome_pai,
      nome_mae,
      data_nasc,
      raca,
      sexo,
      nacionalidade,
      estado_civil,
      situacao_conjugal,
      escolaridade,
      profissao,
      renda_formal,
      renda_informal,
      def_fisica,
      bpc_bolsa,
      cad_unico,
      tempo_residencia,
    },
  });

  return reply.status(201).send();
});

app
  .listen({
    host: "0.0.0.0",
    port: process.env.PORT ? Number(process.env.PORT) : 3333,
  })
  .then(() => {
    console.log("Server Running");
  });
