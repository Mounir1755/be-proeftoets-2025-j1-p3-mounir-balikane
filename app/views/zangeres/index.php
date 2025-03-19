<?php require_once APPROOT . '/views/includes/header.php'; ?>
<div class="container">
    <div class="row text-center">
        <div class="col-12">
            <h3><?php echo $data['title']; ?></h3>
            <table class="table table-striped table-hover small-table">
                <thead>
                    <tr>
                        <th scope="col">Naam</th>
                        <th scope="col">Nettowaarde</th>
                        <th scope="col">Land</th>
                        <th scope="col">Mobiel</th>
                        <th scope="col">Leeftijd</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($data['Zangeres'] as $zangeres) : ?>
                        <tr>
                            <td><?php echo $zangeres->Naam; ?></td>
                            <td><?php echo $zangeres->Nettowaarde; ?></td>
                            <td><?php echo $zangeres->Land; ?></td>                            
                            <td><?php echo $zangeres->Mobiel; ?></td>                            
                            <td><?php echo $zangeres->Leeftijd; ?></td>
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