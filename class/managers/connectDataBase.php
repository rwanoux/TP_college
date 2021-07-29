<?php


//Pattern singleton, qui n'a plus de sens avec l'utilisation d'un Container

namespace managers;

define("SERVER", "localhost"); // definition du nom du serveur / localhost car en local / une IP sinon
define("DBNAME", "college"); // definition de la base de donnée
define("USER", "root"); // definition du user
define("PASSWORD", "root"); // definition du MDP

use PDO;

class Db {

 /**
  * @var Singleton
  * @access private
  * @static
  */
  private static $_instance = null;

  /**
   * Méthode qui crée l'unique instance de la classe
   * si elle n'existe pas encore puis la retourne.
   *
   * @param void
   * @return Singleton
   */
  public static function getInstance() {

       if(is_null(self::$_instance)) {
           self::$_instance = new PDO("mysql:host=" . SERVER . ";dbname=" . DBNAME . ";charset=utf8", USER, PASSWORD);
       }

       return self::$_instance;
  }
}