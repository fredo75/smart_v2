import Chart from 'chart.js'

function testChart (){
  const c = document.getElementById('myChart');
  if (c) {
  const points = JSON.parse(c.dataset.points);
  console.log(points);

    const ctx = c.getContext('2d');
    const chart2 = new Chart(ctx, {
      type: 'pie',
      gridLines: {
   display: false
},

      options: {
        maintainAspectRatio: false,
        responsive: true,
        // scales:
        // { ticks: {
        //     display: false
        //   }
        // }
      },
      data: {
        // labels: ['Transport', 'Food', 'Waste', 'Energy'],
        datasets : [{
          label: "My Score",
          backgroundColor: ['#f79256', '#fbd1a2','#7dcfb6','#00b2ca'],
          borderColor: 'rgba(250, 254, 187, 0)',
          data: points
        },{
          backgroundColor: ['#f79256', '#fbd1a2','#7dcfb6','#00b2ca'],
          borderColor: 'rgb(250, 254, 187, 0 )',
          data: [11],
          backgroundColor: 'rgba(60, 176, 170, 0.5)'

        }]
      }
    });

   }

  const c2 = document.getElementById('myChart2');
  if (c2) {
    const ctx = c2.getContext('2d');
    const chart2 = new Chart(ctx, {
      type: 'pie',
      data: {
        datasets : [{
          label: "My Score",
          backgroundColor: ['#f79256', '#fbd1a2','#7dcfb6','#00b2ca'],
          borderColor: 'rgba(250, 254, 187, 0)',
          data: [5, 11, 3, 7]
        },{
          backgroundColor: ['#f79256', '#fbd1a2','#7dcfb6','#00b2ca'],
          borderColor: 'rgb(250, 254, 187, 0 )',
          data: [11],
          backgroundColor: 'rgba(60, 176, 170, 0.5)'

        }]
      }
    });

   }
}

export {testChart};
