<?php 
    if(! defined('BASEPATH')) exit('No direct script acces allowed');

    class Model extends CI_Model 
    {               
        public function getStatsGeneral()
        {
            $format = "SELECT * FROM statsEquipeGeneralGeneral";
            $sql = $format;
            $query = $this->db->query($sql);
            $result = array();

            foreach($query->result_array() as $row)
            {
                $statsGenGen = array(
                    'Equipe' => $row['equipe'],
                    'Ligue' => $row['ligue'],
                    'Buts' => $row['buts'],
                    'TirsMatch' => $row['tirs_match'],
                    'CartonJaune' => $row['carton_jaune'],
                    'CartonRouge' => $row['carton_rouge'],
                    'Possession' => $row['possession'],
                    'PassesReussies' => $row['passes_reussies'],
                    'AerienGagne' => $row['aerien_gagne'],
                    'Note' => $row['note']
                );

                $result[] = $statsGenGen;
            }
            return $result;
        }        
    }
?>