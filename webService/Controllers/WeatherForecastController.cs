using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Cors;
using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Data;

namespace webService.Controllers;

[ApiController]
[Route("[controller]")]
public class WeatherForecastController : ControllerBase
{
    private static readonly string[] Summaries = new[]
    {
        "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
    };

    private readonly ILogger<WeatherForecastController> _logger;

    public WeatherForecastController(ILogger<WeatherForecastController> logger)
    {
        _logger = logger;
    }

    [HttpGet(Name = "GetWeatherForecast")]
    public IEnumerable<WeatherForecast> Get()
    {
        return Enumerable.Range(1, 5).Select(index => new WeatherForecast
        {
            Date = DateOnly.FromDateTime(DateTime.Now.AddDays(index)),
            TemperatureC = Random.Shared.Next(-20, 55),
            Summary = Summaries[Random.Shared.Next(Summaries.Length)]
        })
        .ToArray();
    }

    [HttpGet("statsGeneral")]
    public IActionResult GetStatsGeneral()
    {
        try
        {
            string connectionString = "Host=stats-foot-v2.ccyzxtomrtfw.us-east-1.rds.amazonaws.com;Port=5432;Database=statsfoot;Username=postgres;Password=statsfoot;";
            IDbConnection c = new NpgsqlConnection(connectionString);
            c.Open();
            using IDbCommand command = c.CreateCommand();
            command.CommandText = "select * from statsEquipeGeneralGeneral";
            using IDataReader reader = command.ExecuteReader();
            List<object> allStatsGen = new List<object>();
            while (reader.Read())
            {
                var statsGenGen = new
                {
                    Equipe = reader.GetString(0),
                    Ligue = reader.GetString(1),
                    Buts = reader.GetInt32(2),
                    TirsMatch = reader.GetDouble(3),
                    CartonJaune = reader.GetInt32(4),
                    CartonRouge = reader.GetInt32(5),
                    Possession = reader.GetDouble(6),
                    PassesReussies = reader.GetDouble(7),
                    AerienGagne = reader.GetDouble(8),
                    Note = reader.GetDouble(9)
                };

                allStatsGen.Add(statsGenGen);
            }
            var result = Ok(allStatsGen);
            // Set CORS headers
            HttpContext.Response.Headers.Add("Access-Control-Allow-Origin", "*");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Headers", "Content-Type");

            return result;
        }
        catch (Exception ex)
        {
            // Log the exception details
            Console.WriteLine(ex.ToString());
            return StatusCode(500, "Internal Server Error");
        }
    }

    [HttpGet("statsGeneralDomicile")]
    public IActionResult GetStatsGeneralDomicile()
    {
        try
        {
            string connectionString = "Host=stats-foot-v2.ccyzxtomrtfw.us-east-1.rds.amazonaws.com;Port=5432;Database=statsfoot;Username=postgres;Password=statsfoot;";
            IDbConnection c = new NpgsqlConnection(connectionString);
            c.Open();
            using IDbCommand command = c.CreateCommand();
            command.CommandText = "select * from statsEquipeGeneralDomicile";
            using IDataReader reader = command.ExecuteReader();
            List<object> allStatsGen = new List<object>();
            while (reader.Read())
            {
                var statsGenGen = new
                {
                    Equipe = reader.GetString(0),
                    Ligue = reader.GetString(1),
                    Buts = reader.GetInt32(2),
                    TirsMatch = reader.GetDouble(3),
                    CartonJaune = reader.GetInt32(4),
                    CartonRouge = reader.GetInt32(5),
                    Possession = reader.GetDouble(6),
                    PassesReussies = reader.GetDouble(7),
                    AerienGagne = reader.GetDouble(8),
                    Note = reader.GetDouble(9)
                };

                allStatsGen.Add(statsGenGen);
            }
            var result = Ok(allStatsGen);
            // Set CORS headers
            HttpContext.Response.Headers.Add("Access-Control-Allow-Origin", "*");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Headers", "Content-Type");

            return result;
        }
        catch (Exception ex)
        {
            // Log the exception details
            Console.WriteLine(ex.ToString());
            return StatusCode(500, "Internal Server Error");
        }
    }

    [HttpGet("statsGeneralExterieur")]
    public IActionResult GetStatsGeneralExterieur()
    {
        try
        {
            string connectionString = "Host=stats-foot-v2.ccyzxtomrtfw.us-east-1.rds.amazonaws.com;Port=5432;Database=statsfoot;Username=postgres;Password=statsfoot;";
            IDbConnection c = new NpgsqlConnection(connectionString);
            c.Open();
            using IDbCommand command = c.CreateCommand();
            command.CommandText = "select * from statsEquipeGeneralExterieur";
            using IDataReader reader = command.ExecuteReader();
            List<object> allStatsGen = new List<object>();
            while (reader.Read())
            {
                var statsGenGen = new
                {
                    Equipe = reader.GetString(0),
                    Ligue = reader.GetString(1),
                    Buts = reader.GetInt32(2),
                    TirsMatch = reader.GetDouble(3),
                    CartonJaune = reader.GetInt32(4),
                    CartonRouge = reader.GetInt32(5),
                    Possession = reader.GetDouble(6),
                    PassesReussies = reader.GetDouble(7),
                    AerienGagne = reader.GetDouble(8),
                    Note = reader.GetDouble(9)
                };

                allStatsGen.Add(statsGenGen);
            }
            var result = Ok(allStatsGen);
            // Set CORS headers
            HttpContext.Response.Headers.Add("Access-Control-Allow-Origin", "*");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Headers", "Content-Type");

            return result;
        }
        catch (Exception ex)
        {
            // Log the exception details
            Console.WriteLine(ex.ToString());
            return StatusCode(500, "Internal Server Error");
        }
    }

    [HttpGet("statsDefenseDomicile")]
    public IActionResult GetStatsDefenseDomicile()
    {
        try
        {
            string connectionString = "Host=stats-foot-v2.ccyzxtomrtfw.us-east-1.rds.amazonaws.com;Port=5432;Database=statsfoot;Username=postgres;Password=statsfoot;";
            IDbConnection c = new NpgsqlConnection(connectionString);
            c.Open();
            using IDbCommand command = c.CreateCommand();
            command.CommandText = "select * from statsEquipeDefenseDomicile";
            using IDataReader reader = command.ExecuteReader();
            List<object> allStatsGen = new List<object>();
            while (reader.Read())
            {
                var statsGenGen = new
                {
                    Equipe = reader.GetString(0),
                    Ligue = reader.GetString(1),
                    TirsMatch = reader.GetDouble(2),
                    TacleMatch = reader.GetDouble(3),
                    InterceptionMatch = reader.GetDouble(4),
                    FauteMatch = reader.GetDouble(5),
                    HorsJeuMatch = reader.GetDouble(6),
                    Note = reader.GetDouble(7)
                };

                allStatsGen.Add(statsGenGen);
            }
            var result = Ok(allStatsGen);
            // Set CORS headers
            HttpContext.Response.Headers.Add("Access-Control-Allow-Origin", "*");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Headers", "Content-Type");

            return result;
        }
        catch (Exception ex)
        {
            // Log the exception details
            Console.WriteLine(ex.ToString());
            return StatusCode(500, "Internal Server Error");
        }
    }

    [HttpGet("statsDefenseExterieur")]
    public IActionResult GetStatsDefenseExterieur()
    {
        try
        {
            string connectionString = "Host=stats-foot-v2.ccyzxtomrtfw.us-east-1.rds.amazonaws.com;Port=5432;Database=statsfoot;Username=postgres;Password=statsfoot;";
            IDbConnection c = new NpgsqlConnection(connectionString);
            c.Open();
            using IDbCommand command = c.CreateCommand();
            command.CommandText = "select * from statsEquipeDefenseExterieur";
            using IDataReader reader = command.ExecuteReader();
            List<object> allStatsGen = new List<object>();
            while (reader.Read())
            {
                var statsGenGen = new
                {
                    Equipe = reader.GetString(0),
                    Ligue = reader.GetString(1),
                    TirsMatch = reader.GetDouble(2),
                    TacleMatch = reader.GetDouble(3),
                    InterceptionMatch = reader.GetDouble(4),
                    FauteMatch = reader.GetDouble(5),
                    HorsJeuMatch = reader.GetDouble(6),
                    Note = reader.GetDouble(7)
                };

                allStatsGen.Add(statsGenGen);
            }
            var result = Ok(allStatsGen);
            // Set CORS headers
            HttpContext.Response.Headers.Add("Access-Control-Allow-Origin", "*");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Headers", "Content-Type");

            return result;
        }
        catch (Exception ex)
        {
            // Log the exception details
            Console.WriteLine(ex.ToString());
            return StatusCode(500, "Internal Server Error");
        }
    }

    [HttpGet("statsDefenseGeneral")]
    public IActionResult GetStatsDefenseGeneral()
    {
        try
        {
            string connectionString = "Host=stats-foot-v2.ccyzxtomrtfw.us-east-1.rds.amazonaws.com;Port=5432;Database=statsfoot;Username=postgres;Password=statsfoot;";
            IDbConnection c = new NpgsqlConnection(connectionString);
            c.Open();
            using IDbCommand command = c.CreateCommand();
            command.CommandText = "select * from statsEquipeDefenseGeneral";
            using IDataReader reader = command.ExecuteReader();
            List<object> allStatsGen = new List<object>();
            while (reader.Read())
            {
                var statsGenGen = new
                {
                    Equipe = reader.GetString(0),
                    Ligue = reader.GetString(1),
                    TirsMatch = reader.GetDouble(2),
                    TacleMatch = reader.GetDouble(3),
                    InterceptionMatch = reader.GetDouble(4),
                    FauteMatch = reader.GetDouble(5),
                    HorsJeuMatch = reader.GetDouble(6),
                    Note = reader.GetDouble(7)
                };

                allStatsGen.Add(statsGenGen);
            }
            var result = Ok(allStatsGen);
            // Set CORS headers
            HttpContext.Response.Headers.Add("Access-Control-Allow-Origin", "*");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Headers", "Content-Type");

            return result;
        }
        catch (Exception ex)
        {
            // Log the exception details
            Console.WriteLine(ex.ToString());
            return StatusCode(500, "Internal Server Error");
        }
    }

    [HttpGet("statsAttaqueDomicile")]
    public IActionResult GetStatsAttaqueDomicile()
    {
        try
        {
            string connectionString = "Host=stats-foot-v2.ccyzxtomrtfw.us-east-1.rds.amazonaws.com;Port=5432;Database=statsfoot;Username=postgres;Password=statsfoot;";
            IDbConnection c = new NpgsqlConnection(connectionString);
            c.Open();
            using IDbCommand command = c.CreateCommand();
            command.CommandText = "select * from statsEquipeAttaqueDomicile";
            using IDataReader reader = command.ExecuteReader();
            List<object> allStatsGen = new List<object>();
            while (reader.Read())
            {
                var statsGenGen = new
                {
                    Equipe = reader.GetString(0),
                    Ligue = reader.GetString(1),
                    TirsMatch = reader.GetDouble(2),
                    TirsCadreMatch = reader.GetDouble(3),
                    DribbleMatch = reader.GetDouble(4),
                    FauteSubieMatch = reader.GetDouble(5),
                    Note = reader.GetDouble(6)
                };

                allStatsGen.Add(statsGenGen);
            }
            var result = Ok(allStatsGen);
            // Set CORS headers
            HttpContext.Response.Headers.Add("Access-Control-Allow-Origin", "*");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Headers", "Content-Type");

            return result;
        }
        catch (Exception ex)
        {
            // Log the exception details
            Console.WriteLine(ex.ToString());
            return StatusCode(500, "Internal Server Error");
        }
    }

    [HttpGet("statsAttaqueExterieur")]
    public IActionResult GetStatsAttaqueExterieur()
    {
        try
        {
            string connectionString = "Host=stats-foot-v2.ccyzxtomrtfw.us-east-1.rds.amazonaws.com;Port=5432;Database=statsfoot;Username=postgres;Password=statsfoot;";
            IDbConnection c = new NpgsqlConnection(connectionString);
            c.Open();
            using IDbCommand command = c.CreateCommand();
            command.CommandText = "select * from statsEquipeAttaqueExterieur";
            using IDataReader reader = command.ExecuteReader();
            List<object> allStatsGen = new List<object>();
            while (reader.Read())
            {
                var statsGenGen = new
                {
                    Equipe = reader.GetString(0),
                    Ligue = reader.GetString(1),
                    TirsMatch = reader.GetDouble(2),
                    TirsCadreMatch = reader.GetDouble(3),
                    DribbleMatch = reader.GetDouble(4),
                    FauteSubieMatch = reader.GetDouble(5),
                    Note = reader.GetDouble(6)
                };

                allStatsGen.Add(statsGenGen);
            }
            var result = Ok(allStatsGen);
            // Set CORS headers
            HttpContext.Response.Headers.Add("Access-Control-Allow-Origin", "*");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Headers", "Content-Type");

            return result;
        }
        catch (Exception ex)
        {
            // Log the exception details
            Console.WriteLine(ex.ToString());
            return StatusCode(500, "Internal Server Error");
        }
    }

    [HttpGet("statsAttaqueGeneral")]
    public IActionResult GetStatsAttaqueGeneral()
    {
        try
        {
            string connectionString = "Host=stats-foot-v2.ccyzxtomrtfw.us-east-1.rds.amazonaws.com;Port=5432;Database=statsfoot;Username=postgres;Password=statsfoot;";
            IDbConnection c = new NpgsqlConnection(connectionString);
            c.Open();
            using IDbCommand command = c.CreateCommand();
            command.CommandText = "select * from statsEquipeAttaqueGeneral";
            using IDataReader reader = command.ExecuteReader();
            List<object> allStatsGen = new List<object>();
            while (reader.Read())
            {
                var statsGenGen = new
                {
                    Equipe = reader.GetString(0),
                    Ligue = reader.GetString(1),
                    TirsMatch = reader.GetDouble(2),
                    TirsCadreMatch = reader.GetDouble(3),
                    DribbleMatch = reader.GetDouble(4),
                    FauteSubieMatch = reader.GetDouble(5),
                    Note = reader.GetDouble(6)
                };

                allStatsGen.Add(statsGenGen);
            }
            var result = Ok(allStatsGen);
            // Set CORS headers
            HttpContext.Response.Headers.Add("Access-Control-Allow-Origin", "*");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
            HttpContext.Response.Headers.Add("Access-Control-Allow-Headers", "Content-Type");

            return result;
        }
        catch (Exception ex)
        {
            // Log the exception details
            Console.WriteLine(ex.ToString());
            return StatusCode(500, "Internal Server Error");
        }
    }
}
