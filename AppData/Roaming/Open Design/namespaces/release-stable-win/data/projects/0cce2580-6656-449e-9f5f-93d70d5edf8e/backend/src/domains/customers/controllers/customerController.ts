import { Request, Response } from 'express';
import { AppError } from '../../shared/utils/response';

const customers: any[] = [];

export const getAll = async (_req: Request, res: Response) => {
  res.json({ success: true, data: customers });
};

export const getById = async (req: Request, res: Response) => {
  const c = customers.find(c => c.id === parseInt(req.params.id));
  if (!c) throw new AppError('Customer not found', 404);
  res.json({ success: true, data: c });
};

export const update = async (req: Request, res: Response) => {
  const idx = customers.findIndex(c => c.id === parseInt(req.params.id));
  if (idx === -1) throw new AppError('Customer not found', 404);
  customers[idx] = { ...customers[idx], ...req.body, updatedAt: new Date() };
  res.json({ success: true, data: customers[idx] });
};