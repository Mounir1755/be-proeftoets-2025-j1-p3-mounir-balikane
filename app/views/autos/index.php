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
                        <th scope="col">PaardenKracht</th>
                        <th scope="col">Koppel</th>
                        <th scope="col">Prijs</th>
                        <th scope="col">Release Datum</th>
                        <th scope="col">DroomAuto</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($data['autos'] as $auto) : ?>
                        <tr>
                            <td><?php echo $auto->Merk; ?></td>
                            <td><?php echo $auto->Model; ?></td> 
                            <td><?php echo $auto->PaardenKracht; ?></td>
                            <td><?php echo $auto->Koppel; ?></td>
                            <td><?php echo $auto->Prijs; ?></td>
                            <td><?php echo $auto->ReleaseDatum; ?></td>
                            <td><?php echo $auto->DroomAuto ? 'Ja' : 'Nee'; ?></td>
                            <td><a href="<?= URLROOT; ?>/autos/delete/<?= $auto->Id; ?>">Delete</a></td>

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