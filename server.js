app.get('/estados', async (req, res) => {
  try {
    const regioesValidas = {
      norte: 'Norte',
      nordeste: 'Nordeste',
      sul: 'Sul',
      sudeste: 'Sudeste',
      'centro-oeste': 'Centro-Oeste'
    };

    let { regiao } = req.query;

    let query = 'SELECT * FROM estados';
    const params = [];

    if (regiao) {
      // Normaliza: remove espaços e converte pra minúscula
      const chave = regiao.trim().toLowerCase();
      const regiaoFinal = regioesValidas[chave];

      if (!regiaoFinal) {
        return res.status(400).json({ erro: 'Região inválida. Use: Norte, Sul, etc.' });
      }

      query += ' WHERE regiao = ?';
      params.push(regiaoFinal);
    }

    const [rows] = await db.query(query, params);
    res.json(rows);
  } catch (err) {
    console.error('Erro ao consultar estados:', err);
    res.status(500).send('Erro no servidor');
  }
});