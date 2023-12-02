const express = require('express');
const statsController = require('./statsController');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/statsGeneral', statsController.getStatsGeneral);
app.get('/statsGeneralDomicile', statsController.getStatsGeneralDomicile);
app.get('/statsGeneralExterieur', statsController.getStatsGeneralExterieur);
app.get('/statsDefenseDomicile', statsController.getStatsDefenseDomicile);
app.get('/statsDefenseExterieur', statsController.getStatsDefenseExterieur);
app.get('/statsDefenseGeneral', statsController.getStatsDefenseGeneral);
app.get('/statsAttaqueDomicile', statsController.getStatsAttaqueDomicile);
app.get('/statsAttaqueExterieur', statsController.getStatsAttaqueExterieur);
app.get('/statsAttaqueGeneral', statsController.getStatsAttaqueGeneral);

app.listen(() => {
  console.log(`Server is running on port ${PORT}`);
});