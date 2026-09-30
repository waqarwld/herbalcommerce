import { Router } from 'express';
import { getAll, getById, update } from '../controllers/customerController';
import { authenticateToken } from '../../../middleware/auth';
import { isAdmin } from '../../../middleware/rbac';

const router = Router();

router.get('/', getAll);
router.get('/:id', authenticateToken, getById);
router.put('/:id', authenticateToken, update);

export default router;