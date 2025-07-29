import express from 'express';

//app
const app = express();

app.get('/', (_req, res) => {
  res.json({ message: 'Hello from TypeScript app!' });
});

// Middleware to parse JSON bodies
if (process.env.NODE_ENV !== 'test') {
  const PORT = process.env.PORT || 3000;
  app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
  });
}

export default app;
