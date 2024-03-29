<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="./style/bootstrap.min.css">
    <link rel="stylesheet" href="./style/main.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/color-calendar/dist/css/theme-basic.css" />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TP college</title>

</head>

<body class="text-light bg-dark">


    <!-- -------->
    <!-- HEADER-->
    <!-- -------->
    <header class="mb-5">

        <nav class="navbar navbar-expand-lg navbar-dark py-3">
            <div class="container-fluid">
                <h1 class="px-3"> <a href="index.php">Bienvenu au college</a></h1>
                <h3 class="ps-5">listes globales</h3>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                        <li class="nav-item">
                            <a class="nav-link" href="index.php?entity=professeur">Professeurs</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?entity=eleve">eleves</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?entity=classe">classes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?entity=evaluation">evaluations</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?entity=cour">cours </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?entity=matiere">matières</a>
                        </li>

                    </ul>

                </div>
            </div>
        </nav>

    </header>