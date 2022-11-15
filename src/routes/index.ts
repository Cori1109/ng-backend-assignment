import { Request, Response, Router } from 'express'
const router = Router()

router.get('/hello', (_req: Request, res: Response) => {
    return res.status(200).send({ hello: 'world' })
})

export { router }