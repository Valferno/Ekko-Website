$bestiario = Import-Csv -Path 'Ekko - Base de datos - Bestiario.csv' -Delimiter ';' | 
    Where-Object { $_.Codigo -ne $null -and $_.Codigo.Trim() -ne '' -and $_.Nombre -ne $null -and $_.Nombre.Trim() -ne '' }

$bestiario_formatted = $bestiario | ForEach-Object {
    $c = $_
    $familia = if ($c.Familia) { $c.Familia.Trim() } else { "" }
    $tipo = if ($c.Tipo) { $c.Tipo.Trim() } else { "" }
    $poder = if ($c.Poder) { $c.Poder.Trim() } else { "" }
    $resistencia = if ($c.Resistencia) { $c.Resistencia.Trim() } else { "" }
    $nivel = if ($c.Nivel) { $c.Nivel.Trim() } else { "" }
    $habilidad = if ($c.Habilidad) { $c.Habilidad.Trim() } else { "" }
    $estado = if ($c.ESTADO) { $c.ESTADO.Trim() } else { "REVISION" }
    $lore = if ($c.Lore) { $c.Lore.Trim() } else { "" }

    [PSCustomObject]@{
        codigo = $c.Codigo.Trim()
        nombre = $c.Nombre.Trim()
        familia = $familia
        tipo = $tipo
        poder = $poder
        resistencia = $resistencia
        nivel = $nivel
        habilidad = $habilidad
        estado = $estado
        lore = $lore
    }
}

$bestiario_formatted | ConvertTo-Json -Depth 3 | Out-File -FilePath 'bestiario_js.json' -Encoding utf8

$eventos = Import-Csv -Path 'Ekko - Base de datos - Eventos.csv' -Delimiter ';' | 
    Where-Object { $_.Codigo -ne $null -and $_.Codigo.Trim() -ne '' -and $_.Nombre -ne $null -and $_.Nombre.Trim() -ne '' }

$eventos_formatted = $eventos | ForEach-Object {
    $e = $_
    $detalle = if ($e.Detalle) { $e.Detalle.Trim() } else { "" }
    $status = if ($e.Estado) { $e.Estado.Trim() } else { "REVISION" }

    [PSCustomObject]@{
        id = $e.Codigo.Trim()
        name = $e.Nombre.Trim()
        detail = $detalle
        status = $status
        extra = ""
    }
}

$eventos_formatted | ConvertTo-Json -Depth 3 | Out-File -FilePath 'eventos_js.json' -Encoding utf8
