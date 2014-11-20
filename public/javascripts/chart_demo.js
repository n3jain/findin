var chart;
$(document).ready(function() {
  function requestData() {
    $.ajax({
      url: '/get_data_for_chart',
      success: function(point) {
        console.log(point);
        var keys = Object.keys(point);

        var series = {};
        console.log(keys)
      // add the point
      for(var i=0;i<keys.length;i++){
        chart.series[0].addPoint([Date.parse(keys[i]+' UTC'), point[keys[i]]['total']], true );
        chart.series[1].addPoint([Date.parse(keys[i]+ ' UTC'), point[keys[i]]['sold']], true );
      }

      },
      cache: false
    });
  }

  chart = chart = new Highcharts.Chart({
    title: {
             text: 'Campaign Stats'
           },
        chart: {
                 renderTo: 'container',
        events: {
          load: requestData
        }
               },
        xAxis: {
                 type: 'datetime',
        dateTimeLabelFormats: {
          month: '%e. %b',
        tickInterval: 24 * 3600 * 1000
        },
        title: {
                 text: 'Date'
               }
               },
        yAxis: {
                 title: {
                          text: 'Total'
                        }
               },
        series: [{
                  name: 'Comments',
                  data: []
                },
        {
          name: 'Sold Comments',
          data: []
        }]
  });
});
