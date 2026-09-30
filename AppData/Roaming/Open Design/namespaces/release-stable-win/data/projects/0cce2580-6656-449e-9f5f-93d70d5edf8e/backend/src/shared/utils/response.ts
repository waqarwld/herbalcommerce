export interface ApiResponse<T = any> {
  success: boolean;
  data?: T;
  error?: string;
  message?: string;
  pagination?: {
    page: number;
    limit: number;
    total: number;
    totalPages: number;
  };
}

export const successResponse = <T>(res: any, data: T, message?: string, pagination?: ApiResponse<T>['pagination']) => {
  res.json({ success: true, data, message, pagination });
};

export const errorResponse = (res: any, error: string, statusCode: number = 500) => {
  res.status(statusCode).json({ success: false, error, message: error });
};

// Stub AppError for compilation (domain controllers import from here)
export class AppError extends Error {
  statusCode: number;
  isOperational: boolean;
  constructor(message: string, statusCode: number) {
    super(message);
    this.statusCode = statusCode;
    this.isOperational = true;
  }
}
