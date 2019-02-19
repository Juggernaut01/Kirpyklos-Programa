
<!DOCTYPE html>
<html>
<head>
    <title>HTML5/JavaScript Event Calendar</title>

    	<link type="text/css" rel="stylesheet" href="media/layout.css" />

	<script src="includes/js/jquery-1.9.1.min.js" type="text/javascript"></script>


        <script src="includes/js/daypilot/daypilot-all.min.js" type="text/javascript"></script>

</head>
<body>
  <style>
  html {
    background: url(https://boulderhairsalon.com/wp-content/uploads/2017/06/voodoo-hair-lounge-boulder-colorado.jpg) no-repeat center center fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
  }
  </style>

        <div class="shadow"></div>
        <div class="hideSkipLink">
        </div>
        <div class="main">

            <div style="float:left; width: 160px;">
                <div id="nav"></div>
            </div>
            <div style="margin-left: 160px;">



                <div id="dp"></div>
            </div>
<?php

 require_once('includes\classes\DB.php');



 $stmt = $db->prepare('SELECT * FROM events');



 $stmt->execute();
 $result = $stmt->fetchAll();
 // print_r($result);
 class Event {}
 $events = array();
 //
 foreach($result as $row) {
   $e = new Event();
   $e->id = $row['id'];
   $e->text = "Uzimta";
   $e->start = $row['start'];
   $e->end = $row['end'];
   $events[] = $e;
 }




?>


            <script type="text/javascript">

            var nav = new DayPilot.Navigator("nav");
                            nav.showMonths = 3;
                            nav.skipMonths = 3;
                            nav.selectMode = "week";
                            nav.onTimeRangeSelected = function(args) {
                                dp.startDate = args.day;
                                dp.update();
                                loadEvents();
                            };
                            nav.init();

                var dp = new DayPilot.Calendar("dp");
                dp.scale = "CellDuration";
  dp.cellDuration = 15;
                dp.eventMoveHandling = "Disabled";


                dp.eventResizeHandling = "Disabled";
                dp.timeHeaderCellDuration = 15;
                dp.cellDuration = 15;
                dp.dayBeginsHour = 10;
                dp.dayEndsHour = 20;

                var e = new DayPilot.Event({

                  moveDisabled: true
                });


                dp.viewType = "Week";

                dp.days= "14",


                dp.businessBeginsHour="10"
                dp.businessEndsHour="20";

                dp.events.list = <?php echo json_encode($events)?>



                var sameHourEvents =[];

                dp.onTimeRangeSelected = function(args) {
                  sameHourEvents.push(args.start);

                    var name = prompt("Įrašykite kokios šukuosenos norite");
                    dp.clearSelection();
                    if (!name) return;
                    var e = new DayPilot.Event({
                        start: args.start,
                        end: args.end,
                        id: DayPilot.guid(),
                        resource: args.resource,
                        text: "Jusu rez. laikas"

                    });
                    dp.events.add(e);
                    dp.timeRangeSelectedHandling = "Disabled";
                    alert("Jusu vizito laikas yra: "+args.start );


                    $.post("/includes/controllers/backend_create.php",
                            {
                                start: args.start.toString(),


                                end: args.end.toString(),
                                email: "<?php echo $_POST['email']?>",
                                name:"<?php echo $_POST['client_name']?>",
                                tel_nr:"<?php echo $_POST['telnr']?>"



                            },
                            function() {
                                console.log("Created.");
                            });

                };



                dp.init();

                loadEvents();

                function loadEvents() {
                    dp.events.load("backend_events.php");
                }

            </script>
<script>
window.onbeforeunload = function() {
    window.setTimeout(function () {
        window.location = 'homepage';
    }, 0);
    window.onbeforeunload = null;
}
</script>
<script>
window.onbeforeunload = function() {
    window.setTimeout(function () {
        window.location = 'homepage';
    }, 0);
    window.onbeforeunload = null;
}
</script>

        </div>
        <div class="clear">
        </div>



</body>
</html>
