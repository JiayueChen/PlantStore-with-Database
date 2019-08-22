<?php
global $pdo;
// RETRIEVE THE DATA FROM THE DATABASE TABLE

// SQL for web server means nothing more than any other string
$q = "SELECT * FROM `products`";

// prepare() method gets the query ready for database server
$prepared = $pdo->prepare($q);

// perform the database query
$prepared->execute();
// extract the data from our $prepared object
//$data = $prepared->fetchAll();
$data = $prepared->fetchAll(PDO::FETCH_ASSOC);




// check if there is something in $_GET array under the key: prod-id
// if not, loop through $products and parse the data into desired markup
$markup = "";

// if statement runs in case that user didn't select anything from dropdown
if(!isset($_GET['prod-id'])) {
    foreach($data as $value) {
        $markup .= "<div class='product col col-12 col-sm-6 col-md-3 text-center'>
                        <figure class='figure'>
                            <img src='{$value['prod_image']}' alt='${value['prod_name']}' class='figure-img img-fluid rounded'>
                            <figcaption class='figure-caption text-center'>
                                <h5>{$value['prod_name']}</h5>
                                <p>{$value['prod_price']}</p>
                                
                            </figcaption>
                        </figure>
                    </div>";
    }
} else {
    $selectedItem = [];
    foreach($data as $value) {
        if($_GET["prod-id"] === $value["prod_code"]) {
            array_push($selectedItem, $value);
        }
    }
    
    foreach($selectedItem as $value) {
        $markup .= "<div class='product col col-12 col-sm-6 col-md-3 text-center'>
                        <figure class='figure'>
                            <img src='{$value['prod_image']}' alt='${value['prod_name']}' class='figure-img img-fluid rounded'>
                            <figcaption class='figure-caption text-center'>
                                <h5>{$value['prod_name']}</h5>
                                <p>{$value['prod_price']}</p>
                            </figcaption>
                        </figure>
                    </div>";
    }
}

?>
