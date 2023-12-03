function showTable(tableId) {
    var tables = document.querySelectorAll('div[id^="table"]');
    tables.forEach(function(table) {
       table.classList.add('hidden');
    });
    var selectedTable = document.getElementById(tableId);
    selectedTable.classList.remove('hidden');
}

function updateGenStatsTable(endpoint,divName) {
    fetch(endpoint,{ mode: 'cors' })
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
        	var tableDiv = document.getElementById(divName);
            var table = tableDiv.querySelector('table');
            while (table.rows.length > 1) {
                table.deleteRow(1);
            }
            data.forEach(function (item) {
                var row = table.insertRow(-1);
                function appendCell(value) {
                    var cell = row.insertCell();
                    cell.innerHTML = value;
                }
                appendCell(item.Equipe);
                appendCell(item.Ligue);
                appendCell(item.Buts);
                appendCell(item.TirsMatch);
                appendCell(item.CartonJaune);
                appendCell(item.CartonRouge);
                appendCell(item.Possession);
                appendCell(item.PassesReussies);
                appendCell(item.AerienGagne);
                appendCell(item.Note);
            });
            showTable(divName);
        })
        .catch(error => console.error('Error fetching data:', error));
}

function showGenTable (endpoint,divName) {
	updateGenStatsTable(endpoint,divName);
}

function updateDefStatsTable(endpoint, divName) {
    fetch(endpoint,{ mode: 'cors' })
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            var tableDiv = document.getElementById(divName);
            var table = tableDiv.querySelector('table');
            while (table.rows.length > 1) {
                table.deleteRow(1);
            }
            data.forEach(function (item) {
                var row = table.insertRow(-1);
                function appendCell(value) {
                    var cell = row.insertCell();
                    cell.innerHTML = value;
                }
                appendCell(item.Equipe);
                appendCell(item.Ligue);
                appendCell(item.TirsMatch);
                appendCell(item.TacleMatch);
                appendCell(item.InterceptionMatch);
                appendCell(item.FauteMatch);
                appendCell(item.HorsJeuMatch);
                appendCell(item.Note);
            });
            showTable(divName);
        })
        .catch(error => console.error('Error fetching data:', error));
}

function showDefTable (endpoint,divName) {
	updateDefStatsTable(endpoint,divName);
}

function updateOffStatsTable(endpoint, divName) {
    fetch(endpoint,{ mode: 'cors' })
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            var tableDiv = document.getElementById(divName);
            var table = tableDiv.querySelector('table');
            while (table.rows.length > 1) {
                table.deleteRow(1);
            }
            data.forEach(function (item) {
                var row = table.insertRow(-1);
                function appendCell(value) {
                    var cell = row.insertCell();
                    cell.innerHTML = value;
                }
                appendCell(item.Equipe);
                appendCell(item.Ligue);
                appendCell(item.TirsMatch);
                appendCell(item.TirsCadreMatch);
                appendCell(item.DribbleMatch);
                appendCell(item.FauteSubieMatch);
                appendCell(item.Note);
            });
            showTable(divName);
        })
        .catch(error => console.error('Error fetching data:', error));
}

function showOffTable (endpoint,divName) {
	updateOffStatsTable(endpoint,divName);
}