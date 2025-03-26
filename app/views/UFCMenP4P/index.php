<?php require_once APPROOT . '/views/includes/header.php'; ?>
<div class="container">
    <div class="row text-center">
        <div class="col-12">
            <h1 style="color: gold;"><?php echo $data['title']; ?></h1>
            <table class="table table-striped table-hover small-table">
                <thead>
                    <tr>
                        <th class="text-start">Naam</th>
                        <th class="text-start">Ranglijstnummer</th>
                        <th class="text-start">Lengte</th>
                        <th class="text-start">Gewicht</th>
                        <th class="text-start">Leeftijd</th>
                        <th class="text-start">Winst Door Knockout</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($data['P4P'] as $P4P) : ?>
                        <tr>
                            <td class="text-start"><?php echo $P4P->Naam; ?></td>
                            <td class="text-start"><?php echo $P4P->Ranglijstnummer; ?></td> 
                            <td class="text-start"><?php echo $P4P->Lengte; ?></td>
                            <td class="text-start"><?php echo $P4P->Gewicht; ?></td>
                            <td class="text-start"><?php echo $P4P->Leeftijd; ?></td>
                            <td class="text-start"><?php echo $P4P->WinstDoorKnockout; ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <a href="<?= URLROOT; ?>/homepages/index">TERUG NAAR HOME</a>
        </div>
    </div>
</div>

<style>
    .small-table {
        width: 65%;
        margin: 0 auto;
    }
    .small-table th, .small-table td {
        padding: 5px;
        text-align: center;
    }
</style>

<?php require_once APPROOT . '/views/includes/footer.php'; ?>