<?php

  class Forum
  {

    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }


    //example: db data - select //ShowMenu
    public function forum()
    {
      $this->db->query('SELECT * FROM Table_Menu');
      return $this->db->resultSet();
    }

    //example: db data - insert
    public function add($item, $price)
    {
      //Adding data to database                 //WHERE menu_id = :menu_id (updating and deleting)
      $this->db->query('INSERT INTO  Table_Menu  (MENU_ITEM, ITEM_PRICE) VALUES (:menu_item, :item_price)');
    
     
      //Binding Variables
      $this->db->bind(':menu_item', $item);
      $this->db->bind(':item_price', $price);
      

      //Return true or false, based on if query is successful or not
      if($this->db->execute())
      {
          return true;
      }
      else
      {
          return false;
      }
    }
  }
?>