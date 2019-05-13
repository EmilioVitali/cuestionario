<?php
    try
    {
        $mysqli = new MySQLI('localhost', 'root', '', 'cuestionario');
    }
    catch(Exception $e)
    {
        echo $e->getMessage();
        return;
    } 
    $q = 
    'SELECT
        `p`.`id`, `p`.`pregunta`, `p`.`activo`, `r`.`respuesta1`, `r`.`respuesta2`
    FROM
        `preguntas` AS `p`
    INNER JOIN
        `respuestas` AS `r`
        ON
            `p`.`id` = `r`.`id_pregunta`';
    $r = $mysqli->query($q);
    while($row = $r->fetch_assoc())
        $respuesta[] = array
        (
            'id' => (int)($row['id'] - 1),
            'pregunta' => (string)$row['pregunta'],
            'activo' => (int)$row['activo'],
            'respuesta' => array
            (
                '1' => (string)$row['respuesta1'],
                '2' => (string)$row['respuesta2']
            )
        );
    echo json_encode($respuesta);
    //echo var_dump($respuesta); // Arreglo de arreglos