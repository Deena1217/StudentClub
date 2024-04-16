<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Details</title>
</head>
<body>
    <?php
    include 'admin/db_connect.php';

    if (isset($_GET['id'])) {
        $qry = $conn->query("SELECT * FROM careers WHERE id=" . $_GET['id'])->fetch_array();
        foreach ($qry as $k => $v) {
            $$k = $v;
        }
    }
    ?>
    <div class="container-fluid">
        <p>Company: <b><large><?php echo isset($company) ? ucwords($company) : '' ?></large></b></p>
        <p>Job Title: <b><large><?php echo isset($job_title) ? ucwords($job_title) : '' ?></large></b></p>
        <p>Location: <i class="fa fa-map-marker"></i> <b><large><?php echo isset($location) ? $location : '' ?></large></b></p>
        <p>Skills: <i class="fa fa-map-marker"></i> <b><large><?php echo isset($skills) ? $skills : '' ?></large></b></p>
        <hr class="divider">
        <?php echo isset($description) ? html_entity_decode($description) : '' ?>
    </div>
    <div class="modal-footer display">
        <div class="row">
            <div class="col-md-12">
                <button class="btn float-right btn-secondary" type="button" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
    <style>
        p {
            margin: unset;
        }

        #uni_modal .modal-footer {
            display: none;
        }

        #uni_modal .modal-footer.display {
            display: block;
        }
    </style>
    <script>
        $('.text-jqte').jqte();
        $('#manage-career').submit(function (e) {
            e.preventDefault()
            start_load()
            $.ajax({
                url: 'admin/ajax.php?action=save_career',
                method: 'POST',
                data: $(this).serialize(),
                success: function (resp) {
                    if (resp == 1) {
                        alert_toast("Data successfully saved.", 'success')
                        setTimeout(function () {
                            location.reload()
                        }, 1000)
                    }
                }
            })
        })
    </script>
</body>
</html>
