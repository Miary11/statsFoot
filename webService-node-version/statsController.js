const { Pool } = require('pg');

const neonConnectionString = "postgresql://Miary11:JS1wUeKQ2Trt@ep-divine-cake-65130730-pooler.us-east-2.aws.neon.tech/statsfoot?sslmode=require";
const modifiedConnectionString = neonConnectionString.replace('-pooler.', '.'); // Remove the '-pooler' part

const pool = new Pool({
  connectionString: modifiedConnectionString,
});

async function getStatsGeneral(req, res) {
  try {
    const client = await pool.connect();
    const result = await client.query('SELECT * FROM statsEquipeGeneralGeneral');
    const allStatsGen = result.rows.map((row) => ({
      Equipe: row[0],
      Ligue: row[1],
      Buts: row[2],
      TirsMatch: row[3],
      CartonJaune: row[4],
      CartonRouge: row[5],
      Possession: row[6],
      PassesReussies: row[7],
      AerienGagne: row[8],
      Note: row[9],
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
      Equipe: row[0],
      Ligue: row[1],
      Buts: row[2],
      TirsMatch: row[3],
      CartonJaune: row[4],
      CartonRouge: row[5],
      Possession: row[6],
      PassesReussies: row[7],
      AerienGagne: row[8],
      Note: row[9],
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
      Equipe: row[0],
      Ligue: row[1],
      Buts: row[2],
      TirsMatch: row[3],
      CartonJaune: row[4],
      CartonRouge: row[5],
      Possession: row[6],
      PassesReussies: row[7],
      AerienGagne: row[8],
      Note: row[9],
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
      Equipe: row[0],
      Ligue: row[1],
      TirsMatch: row[2],
      TacleMatch: row[3],
      InterceptionMatch: row[4],
      FauteMatch: row[5],
      HorsJeuMatch: row[6],
      Note: row[7],
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
      Equipe: row[0],
      Ligue: row[1],
      TirsMatch: row[2],
      TacleMatch: row[3],
      InterceptionMatch: row[4],
      FauteMatch: row[5],
      HorsJeuMatch: row[6],
      Note: row[7],
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
      Equipe: row[0],
      Ligue: row[1],
      TirsMatch: row[2],
      TacleMatch: row[3],
      InterceptionMatch: row[4],
      FauteMatch: row[5],
      HorsJeuMatch: row[6],
      Note: row[7],
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
      Equipe: row[0],
      Ligue: row[1],
      TirsMatch: row[2],
      TirsCadreMatch: row[3],
      DribbleMatch: row[4],
      FauteSubieMatch: row[5],
      Note: row[6],
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
      Equipe: row[0],
      Ligue: row[1],
      TirsMatch: row[2],
      TirsCadreMatch: row[3],
      DribbleMatch: row[4],
      FauteSubieMatch: row[5],
      Note: row[6],
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
      Equipe: row[0],
      Ligue: row[1],
      TirsMatch: row[2],
      TirsCadreMatch: row[3],
      DribbleMatch: row[4],
      FauteSubieMatch: row[5],
      Note: row[6],
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