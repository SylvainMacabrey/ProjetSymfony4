<?php
/**
 * Created by PhpStorm.
 * User: sylva
 * Date: 09/01/2018
 * Time: 19:26
 */

namespace App\helper;

class Helper_date {

    public function dateAmericanToFrench($date_embauche) {
        list($year, $month, $day) = explode("-", $date_embauche);
        return "$day/$month/$year";
    }

    public function dateFrenchToAmerican($date_embauche) {
        list($day, $month, $year) = explode("/", $date_embauche);
        return "$year-$month-$day";
    }

    public function verifDateFrench($date_embauche) {
        if (preg_match("/^[0-9]{1,2}\/[0-9]{1,2}\/[0-9]{4}/", $date_embauche)) {
            list($day, $month, $year) = explode("/", $date_embauche);
            if ($day <= 31 and $day > 0 and $month <= 12 and $month > 0 and $year <= 9999 and $year > 0)
                return true;
        }
        return false;
    }

    public function verifDateAmerican($date_embauche) {
        if (preg_match("/^[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}/", $date_embauche)) {
            list($year, $month, $day) = explode("-", $date_embauche);
            if ($day <= 31 and $day > 0 and $month <= 12 and $month > 0 and $year <= 9999 and $year > 0)
                return true;
        }
        return false;
    }
}