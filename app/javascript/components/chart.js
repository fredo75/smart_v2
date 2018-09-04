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
        scales:
        { ticks: {
            display: false
          }
        }
      },
      data: {
        labels: ['Transport', 'Food', 'Waste', 'Energy'],
        datasets : [{
          label: "My Score",
          backgroundColor: ['rgb(240, 25, 94)','rgb(246, 242, 171)','rgb(253, 172, 98)','rgb(255, 91, 93)'],
          borderColor: 'rgba(250, 254, 187, 0)',
          data: points
        },{
          backgroundColor: ['rgba(250, 254, 187, 0.8)','rgba(198, 239, 167, 0.7)','rgba(38, 107, 127, 0.6)','rgba(60, 176, 170, 0.5)'],
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
          backgroundColor: ['rgb(240, 25, 94)','rgb(246, 242, 171)','rgb(253, 172, 98)','rgb(255, 91, 93)'],
          borderColor: 'rgba(250, 254, 187, 0)',
          data: [5, 11, 3, 7]
        },{
          backgroundColor: ['rgba(250, 254, 187, 0.8)','rgba(198, 239, 167, 0.7)','rgba(38, 107, 127, 0.6)','rgba(60, 176, 170, 0.5)'],
          borderColor: 'rgb(250, 254, 187, 0 )',
          data: [11],
          backgroundColor: 'rgba(60, 176, 170, 0.5)'

        }]
      }
    });

   }
}

export {testChart};
