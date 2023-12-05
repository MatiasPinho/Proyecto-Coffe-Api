import { z } from "zod";

const idSchema = z.object({
  id: z.string().uuid().optional(),
});

const productsSchema = z.object({
  name: z.string({ required_error: "Campo requerido" }).optional(),
  picture: z.string().url().optional(),
  price: z
    .number()
    .int()
    .positive()
    .refine((value) => value !== 0, { message: "Campo requerido" })
    .nullable(), // Permit,
  descript: z.string({ required_error: "Campo requerido" }).optional(),
  catalog: z
    .array(
      z.enum([
        "Comida",
        "Bebida fría",
        "Bebida caliente",
        "Tazas",
        "Cafeteras",
        "Cafés molidos",
        "Combos",
        "Cápsulas",
      ])
    )
    .optional(),
});

export function validateProducts(object) {
  return productsSchema.safeParse(object);
}

export function validateId(object) {
  return idSchema.safeParse(object);
}
