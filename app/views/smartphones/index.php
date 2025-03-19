<?php require_once APPROOT . '/views/includes/header.php'; ?>
<div class="container">
    <div class="row text-center">
        <div class="col-12">
            <h3><?php echo $data['title']; ?></h3>
            <table class="table table-striped table-hover small-table">
                <thead>
                    <tr>
                        <th scope="col">Merk</th>
                        <th scope="col">Model</th>
                        <th scope="col">Prijs (€)</th>
                        <th scope="col">Geheugen (GB)</th>
                        <th scope="col">Besturingssysteem</th>
                        <th scope="col">Schermgrootte</th>
                        <th scope="col">Release Datum</th>
                        <th scope="col">Camera (Megapixels)</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($data['smartphones'] as $smartphone) : ?>
                        <tr>
                            <td><?php echo $smartphone->Merk; ?></td>
                            <td><?php echo $smartphone->Model; ?></td>  
                            <td><?php echo $smartphone->Prijs; ?></td>
                            <td><?php echo $smartphone->Geheugen; ?></td>
                            <td><?php echo $smartphone->OS; ?></td>
                            <td><?php echo $smartphone->Schermgrootte; ?></td>
                            <td><?php echo $smartphone->ReleaseDatum; ?></td>
                            <td><?php echo $smartphone->Camera; ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <a href="/app/views/homepages/index.php">TERUG NAAR HOME</a>
        </div>
    </div>
</div>

<style>
    .small-table {
        width: 80%;
        margin: 0 auto;
    }
    .small-table th, .small-table td {
        padding: 5px;
        text-align: center;
    }
</style>

<?php require_once APPROOT . '/views/includes/footer.php'; ?>