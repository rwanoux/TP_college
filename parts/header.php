

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="main.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TP college</title>

</head>

<body class="text-light bg-dark">


    <!-- -------->
    <!-- HEADER-->
    <!-- -------->
    <header>

        <nav class="navbar navbar-expand-lg navbar-dark py-3">
            <div class="container-fluid">
                <h1> <a class="navbar-brand" href="index.php">Bienvenu au college</a></h1>

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
                            <a class="nav-link" href="index.php?entity=evaluations">evaluations</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?entity=cours">cours </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?entity=matières">matières</a>
                        </li>

                    </ul>
                    <form class="d-flex text-light">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">recherchez</button>
                        <div class="form-check px-4">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                            <label class="form-check-label" for="flexRadioDefault1">
                                eleve
                            </label>
                        </div>
                        <div class="form-check px-4">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2"
                                checked>
                            <label class="form-check-label" for="flexRadioDefault2">
                                prof
                            </label>
                        </div>
                        <div class="form-check px-4">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2"
                                checked>
                            <label class="form-check-label" for="flexRadioDefault2">
                                matiere
                            </label>
                        </div>
                        <div class="form-check px-4">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2"
                                checked>
                            <label class="form-check-label" for="flexRadioDefault2">
                                classe
                            </label>
                        </div>
                        <div class="form-check px-4">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2"
                                checked>
                            <label class="form-check-label" for="flexRadioDefault2">
                                cour
                            </label>
                        </div>
                    </form>
                </div>
            </div>
        </nav>

    </header>