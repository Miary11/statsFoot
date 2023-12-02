const { Pool } = require('pg');

const pool = new Pool({
  host: 'statsfoot-miaryvaliniavo-5046.a.aivencloud.com',
  port: 15819,
  database: 'statsfoot',
  user: 'avnadmin',
  password: 'AVNS_wGgLPbTcF-KyUpJAXCR',
  ssl: {
    rejectUnauthorized: false, // You may need to set this to 'true' if Aiven uses a self-signed certificate
  },
});

async function getStatsGeneral(req, res) {
  try {
    const client = await pool.connect();
    const result = await client.query('SELECT * FROM statsEquipeGeneralGeneral');
    const allStatsGen = result.rows.map((row) => ({
      Equipe: row.equipe,
      Ligue: row.ligue,
      Buts: row.buts,
      TirsMatch: row.tirmatch,
      CartonJaune: row.cartonjaune,
      CartonRouge: row.cartonrouge,
      Possession: row.possession,
      PassesReussies: row.passesreussies,
      AerienGagne: row.aeriengagnes,
      Note: row.note,
    }));

    // Set CORS headers
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
    res.header('Access-Control-Allow-Headers', 'Content-Type');

    res.status(200).json(allStatsGen);
  } catch (error) {
    // Log the exception details
    console.error(error);
    res.status(500).send('Internal Server Error');
  }
}

async function getStatsGeneralDomicile(req, res) {
  try {
    const client = await pool.connect();
    const result = await client.query('select * from statsEquipeGeneralDomicile');
    const allStatsGen = result.rows.map((row) => ({
      Equipe: row.equipe,
      Ligue: row.ligue,
      Buts: row.buts,
      TirsMatch: row.tirmatch,
      CartonJaune: row.cartonjaune,
      CartonRouge: row.cartonrouge,
      Possession: row.possession,
      PassesReussies: row.passesreussies,
      AerienGagne: row.aeriengagnes,
      Note: row.note,
    }));

    // Set CORS headers
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
    res.header('Access-Control-Allow-Headers', 'Content-Type');

    res.status(200).json(allStatsGen);
  } catch (error) {
    // Log the exception details
    console.error(error);
    res.status(500).send('Internal Server Error');
  }
}

async function getStatsGeneralExterieur(req, res) {
  try {
    const client = await pool.connect();
    const result = await client.query('select * from statsEquipeGeneralExterieur');
    const allStatsGen = result.rows.map((row) => ({
      Equipe: row.equipe,
      Ligue: row.ligue,
      Buts: row.buts,
      TirsMatch: row.tirmatch,
      CartonJaune: row.cartonjaune,
      CartonRouge: row.cartonrouge,
      Possession: row.possession,
      PassesReussies: row.passesreussies,
      AerienGagne: row.aeriengagnes,
      Note: row.note,
    }));

    // Set CORS headers
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
    res.header('Access-Control-Allow-Headers', 'Content-Type');

    res.status(200).json(allStatsGen);
  } catch (error) {
    // Log the exception details
    console.error(error);
    res.status(500).send('Internal Server Error');
  }
}

async function getStatsDefenseDomicile(req, res) {
  try {
    const client = await pool.connect();
    const result = await client.query('select * from statsEquipeDefenseDomicile');
    const allStatsGen = result.rows.map((row) => ({
      Equipe: row.equipe,
      Ligue: row.ligue,
      TirsMatch: row.tirmatch,
      TacleMatch: row.taclematch,
      InterceptionMatch: row.interceptionmatch,
      FauteMatch: row.fautematch,
      HorsJeuMatch: row.horsjeuxmatch,
      Note: row.note,
    }));

    // Set CORS headers
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
    res.header('Access-Control-Allow-Headers', 'Content-Type');

    res.status(200).json(allStatsGen);
  } catch (error) {
    // Log the exception details
    console.error(error);
    res.status(500).send('Internal Server Error');
  }
}

async function getStatsDefenseExterieur(req, res) {
  try {
    const client = await pool.connect();
    const result = await client.query('select * from statsEquipeDefenseExterieur');
    const allStatsGen = result.rows.map((row) => ({
      Equipe: row.equipe,
      Ligue: row.ligue,
      TirsMatch: row.tirmatch,
      TacleMatch: row.taclematch,
      InterceptionMatch: row.interceptionmatch,
      FauteMatch: row.fautematch,
      HorsJeuMatch: row.horsjeuxmatch,
      Note: row.note,
    }));

    // Set CORS headers
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
    res.header('Access-Control-Allow-Headers', 'Content-Type');

    res.status(200).json(allStatsGen);
  } catch (error) {
    // Log the exception details
    console.error(error);
    res.status(500).send('Internal Server Error');
  }
}

async function getStatsDefenseGeneral(req, res) {
  try {
    const client = await pool.connect();
    const result = await client.query('select * from statsEquipeDefenseGeneral');
    const allStatsGen = result.rows.map((row) => ({
      Equipe: row.equipe,
      Ligue: row.ligue,
      TirsMatch: row.tirmatch,
      TacleMatch: row.taclematch,
      InterceptionMatch: row.interceptionmatch,
      FauteMatch: row.fautematch,
      HorsJeuMatch: row.horsjeuxmatch,
      Note: row.note,
    }));

    // Set CORS headers
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
    res.header('Access-Control-Allow-Headers', 'Content-Type');

    res.status(200).json(allStatsGen);
  } catch (error) {
    // Log the exception details
    console.error(error);
    res.status(500).send('Internal Server Error');
  }
}

async function getStatsAttaqueDomicile(req, res) {
  try {
    const client = await pool.connect();
    const result = await client.query('select * from statsEquipeAttaqueDomicile');
    const allStatsGen = result.rows.map((row) => ({
      Equipe: row.equipe,
      Ligue: row.ligue,
      TirsMatch: row.tirmatch,
      TirsCadreMatch: row.tircadrematch,
      DribbleMatch: row.dribblematch,
      FauteSubieMatch: row.fautesubiematch,
      Note: row.note,
    }));

    // Set CORS headers
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
    res.header('Access-Control-Allow-Headers', 'Content-Type');

    res.status(200).json(allStatsGen);
  } catch (error) {
    // Log the exception details
    console.error(error);
    res.status(500).send('Internal Server Error');
  }
}

async function getStatsAttaqueExterieur(req, res) {
  try {
    const client = await pool.connect();
    const result = await client.query('select * from statsEquipeAttaqueExterieur');
    const allStatsGen = result.rows.map((row) => ({
      Equipe: row.equipe,
      Ligue: row.ligue,
      TirsMatch: row.tirmatch,
      TirsCadreMatch: row.tircadrematch,
      DribbleMatch: row.dribblematch,
      FauteSubieMatch: row.fautesubiematch,
      Note: row.note,
    }));

    // Set CORS headers
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
    res.header('Access-Control-Allow-Headers', 'Content-Type');

    res.status(200).json(allStatsGen);
  } catch (error) {
    // Log the exception details
    console.error(error);
    res.status(500).send('Internal Server Error');
  }
}

async function getStatsAttaqueGeneral(req, res) {
  try {
    const client = await pool.connect();
    const result = await client.query('select * from statsEquipeAttaqueGeneral');
    const allStatsGen = result.rows.map((row) => ({
      Equipe: row.equipe,
      Ligue: row.ligue,
      TirsMatch: row.tirmatch,
      TirsCadreMatch: row.tircadrematch,
      DribbleMatch: row.dribblematch,
      FauteSubieMatch: row.fautesubiematch,
      Note: row.note,
    }));

    // Set CORS headers
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
    res.header('Access-Control-Allow-Headers', 'Content-Type');

    res.status(200).json(allStatsGen);
  } catch (error) {
    // Log the exception details
    console.error(error);
    res.status(500).send('Internal Server Error');
  }
}

module.exports = {
  getStatsGeneral,
  getStatsGeneralDomicile,
  getStatsGeneralExterieur,
  getStatsDefenseDomicile,
  getStatsDefenseExterieur,
  getStatsDefenseGeneral,
  getStatsAttaqueDomicile,
  getStatsAttaqueExterieur,
  getStatsAttaqueGeneral,
};