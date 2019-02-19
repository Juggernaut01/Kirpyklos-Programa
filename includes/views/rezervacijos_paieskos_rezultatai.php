<!DOCTYPE html>
<html>
<head>
    <title>HTML5/JavaScript Event Calendar</title>
	<!-- demo stylesheet -->
    	<link type="text/css" rel="stylesheet" href="media/layout.css" />



        <link type="text/css" rel="stylesheet" href="themes/calendar_g.css" />
        <link type="text/css" rel="stylesheet" href="themes/calendar_green.css" />
        <link type="text/css" rel="stylesheet" href="themes/calendar_traditional.css" />
        <link type="text/css" rel="stylesheet" href="themes/calendar_transparent.css" />
        <link type="text/css" rel="stylesheet" href="themes/calendar_white.css" />

	<!-- helper libraries -->
	<script src="includes/js/jquery-1.9.1.min.js" type="text/javascript"></script>

	<!-- daypilot libraries -->
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

                      if(!empty($_POST['date']) || !empty($_POST['cl_name'])) {


                      $insert2 = "SELECT * from events WHERE start = :time OR name = :name";
                      // $insert2 = "INSERT INTO clients (name, email, code, visit_id) VALUES ('test', 'test', 'test',  2)";
                      $stmt2 = $db->prepare($insert2);

                      $stmt2->bindParam(':time', $_POST['date']);
                      $stmt2->bindParam(':name', $_POST['cl_name']);
  
                      $stmt2->execute();

                      }


 $result = $stmt2->fetchAll();
 // print_r($result);
 class Event {}
 $events = array();
 //
 foreach($result as $row) {
   $e = new Event();
   $e->id = $row['id'];
   $e->text = "Rasta rezervacija";
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

                dp.viewType = "Week";

                 dp.days= "14",

                dp.scale = "CellDuration";
                dp.cellDuration=15;
                dp.businessBeginsHour="10"
                dp.businessEndsHour="20";
                dp.dayBeginsHour="10";
                dp.dayEndsHour="20";
                dp.events.list = <?php echo json_encode($events)?>

                dp.eventDeleteHandling = "Update";
dp.cellDuration=15;
                dp.onEventDeleted = function(args) {

                    $.post("/includes/controllers/backend_delete.php",
                        {
                            id: args.e.id()
                        },
                        function() {
                            console.log("Deleted.");
                        });
                };

                dp.onEventMoved = function(args) {
                    $.post("/includes/controllers/backend_move.php",
                            {
                                id: args.e.id(),
                                newStart: args.newStart.toString(),
                                newEnd: args.newEnd.toString()
                            },
                            function() {
                                console.log("Moved.");
                            });
                };



                // event creating


                dp.onEventClick = function(args) {
                    alert("clicked: " + args.e.id());
                };

                dp.init();

                loadEvents();

                function loadEvents() {
                    dp.events.load("backend_events.php");
                }

            </script>

            <script type="text/javascript">
            $(document).ready(function() {
                $("#theme").change(function(e) {
                    dp.theme = this.value;
                    dp.update();
                });
            });
            </script>

        </div>
        <div class="clear">
        </div>
        <script>
        window.onbeforeunload = function() {
            window.setTimeout(function () {
                window.location = 'homepage';
            }, 0);
            window.onbeforeunload = null;
        }
        </script>


</body>
</html>
