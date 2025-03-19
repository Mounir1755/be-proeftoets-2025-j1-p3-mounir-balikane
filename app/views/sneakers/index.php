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
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($data['sneakers'] as $sneaker) : ?>
                        <tr>
                            <td><?php echo $sneaker->Merk; ?></td>
                            <td><?php echo $sneaker->Model; ?></td> 
                            <td><a href="<?= URLROOT; ?>/sneakers/delete/<?= $sneaker->Id; ?>">Delete</a> 
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